package com.ppool.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.ppool.dto.History;
import com.ppool.dto.HistoryUploadFile;
import com.ppool.repository.HistoryRepository;
import com.ppool.service.HistoryService;
import com.ppool.util.Util;


@Controller
public class HistoryController {
	
	private HistoryService historyService;
	
	@Autowired
	@Qualifier("historyService")
	public void setHistoryService(HistoryService historyService){
		this.historyService=historyService;
	}
	
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(format,true));
	}
	
	
	@RequestMapping(value = "historylist.action", method = RequestMethod.GET)
	public ModelAndView historyList() {
		ModelAndView mav = new ModelAndView();
		List<History> histories=historyService.getHistoryList();
		
		mav.addObject("histories",histories);
		mav.setViewName("history/historylist");
		return mav;
	}
	
	@RequestMapping(value="historyRegister.action", method=RequestMethod.GET)
	public ModelAndView historyRegister(){
		ModelAndView mav = new ModelAndView();
						
		mav.setViewName("history/historywriteform");
		return mav;
		
	}
	
	@RequestMapping(value ="historywrite.action", method = RequestMethod.POST)
	public String write(
		MultipartHttpServletRequest req,				//file-data + form-data
		History history, HistoryUploadFile file2) {//form-data 저장 변수
		
		//가상경로를 물리경로로 변환하는 기능을 가진 객체 반환
		ServletContext application = req.getSession().getServletContext();
				
		//가상경로 -> 물리경로
		String path = application.getRealPath("/WEB-INF/uploadfiles/");
	
		//Upload 객체에 요청 데이터 저장 -> DB에 insert 처리		
		history.setUserNo(21);
		history.setFile(file2);
		
		
		int newUploadNo = historyService.insertHistory(history);//insert하면 신규 자료번호 반환
		
		MultipartFile file = req.getFile("attach");//요청 데이터에서 파일 정보 추출
		if (file != null && file.getSize() > 0) {
			
			String fileName = file.getOriginalFilename();//파일이름 읽어서 변수에 저장
			if (fileName.contains("\\")) {//IE일 경우 전체 경로에서 파일이름만 추출
				//C:\ABC\DEF\xyz.txt -> xyz.txt
				fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
			}
			
			//첨부파일 데이터 DB에 저장
			HistoryUploadFile fileItem = new HistoryUploadFile();
			fileItem.setHistoryNo(newUploadNo);//등록된 상위 글번호
			fileItem.setUploadSavedFileName(Util.getUniqueFileName(path, fileName));
			fileItem.setUploadUserFileName(fileName);
			
			historyService.insertHistoryFile(fileItem);//DB에 저장
			
			//파일을 디스크에 저장
			try {
				FileOutputStream ostream = 
					new FileOutputStream(new File(path, fileItem.getUploadSavedFileName()));
				InputStream istream = file.getInputStream();
				while (true) {
					int data = istream.read();
					if (data == -1) break;
					ostream.write(data);
				}
				istream.close();
				ostream.close();
			} catch (Exception ex) {
				ex.printStackTrace();
			}
		}
		
		return "redirect:/historylist.action";
		
	}
	
	@RequestMapping(value="historydetailview.action", method=RequestMethod.GET)
	public ModelAndView historyDetailView(int historyNo){
		
		ModelAndView mav= new ModelAndView();
		History history=historyService.getHistoryByHistoryNo(historyNo);
		
		mav.addObject("history",history);
		mav.setViewName("history/historydetailview");
		return mav;		
	};
	
	
	

}
