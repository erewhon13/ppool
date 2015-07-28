package com.ppool.dto;
//import org.apache.commons.lang.builder.ToStringBuilder;
//import org.apache.commons.lang.builder.ToStringStyle;
public class Paging {

	//입력 데이터
	private int pageSize; //게시글 수O
	private int pageNo; //페이지 번호
	private int totalCount; //게시글의 총 수
	
	//연산으로 결정되는 데이터
	private int firstPageNo; //첫번째 페이지번호 1
	private int prevPageNo; //이전 페이지번호 pageNo - 1
	private int startPageNo; //시작페이지(페이징네비 기준)	
	private int endPageNo; //끝 페이지
	private int nextPageNo; //다음 페이지 번호
	private int finalPageNo; //마지막 페이지 번호
	
	public Paging(int pageSize, int pageNo, int totalCount) {
		this.pageSize = pageSize;
		this.pageNo = pageNo;
		this.totalCount = totalCount;
		
		this.makePaging();
	}
	

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getFirstPageNo() {
		return firstPageNo;
	}

	public void setFirstPageNo(int firstPageNo) {
		this.firstPageNo = firstPageNo;
	}

	public int getPrevPageNo() {
		return prevPageNo;
	}

	public void setPrevPageNo(int prevPageNo) {
		this.prevPageNo = prevPageNo;
	}

	public int getStartPageNo() {
		return startPageNo;
	}

	public void setStartPageNo(int startPageNo) {
		this.startPageNo = startPageNo;
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public int getEndPageNo() {
		return endPageNo;
	}

	public void setEndPageNo(int endPageNo) {
		this.endPageNo = endPageNo;
	}

	public int getNextPageNo() {
		return nextPageNo;
	}

	public void setNextPageNo(int nextPageNo) {
		this.nextPageNo = nextPageNo;
	}

	public int getFinalPageNo() {
		return finalPageNo;
	}

	public void setFinalPageNo(int finalPageNo) {
		this.finalPageNo = finalPageNo;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	
	//페이징 생성
	private void makePaging(){
		if (this.totalCount == 0) return; //게시글 전체 수가 없는 경우
		if (this.pageNo == 0) this.setPageNo(1); //기본값 설정
		if (this.pageSize == 0) this.setPageSize(10); //기본값 설정
		
		int finalPage = (totalCount + (pageSize - 1)) / pageSize; // 마지막 페이지
		
		if (this.pageNo > finalPage) this.setPageNo(finalPage); // 기본값 설정
		
		if (this.pageNo < 0 || this.pageNo > finalPage) this.pageNo = 1; //현재 페이지 유효성 체크
		
		boolean isNowFirst = pageNo == 1 ? true : false; //시작 페이지(전체)
		boolean isNowFinal = pageNo == finalPage ? true : false; //마지막 페이지(전체)
		
		int startPage = ((pageNo - 1) / 10) * 10 + 1; //시작 페이지(페이징 네비 기준)
		
		int endPage = startPage + 10 - 1; //끝 페이지 (페이징 네비 기준)
		
		if (endPage > finalPage) {// [끝 페이지 (페이징 네비 기준) > 마지막 페이지] 보다 큰 경우 
			
			endPage = finalPage;
		}
		
		this.setFirstPageNo(1); //첫 번째 페이지 번호
		
		if (isNowFirst) {
			this.setPrevPageNo(1); //이전 페이지 번호
		} else {
			this.setPrevPageNo(((pageNo - 1) < 1 ? 1 : (pageNo - 1))); //이전 페이지 번호
		}
		
		this.setStartPageNo(startPage); //시작 페이지(페이징 네비 기준)
		this.setEndPageNo(endPage); //끝 페이지(페이징 네비 기준)
		
		if (isNowFinal) {
			this.setNextPageNo(finalPage); 
		} else {
			this.setNextPageNo(((pageNo + 1) > finalPage ? finalPage : (pageNo + 1)));
		}
		
		this.setFinalPageNo(finalPage);
	}
	
//	@Override
//	public String toString(){
//		 return ToStringBuilder.reflectionToString(this, ToStringStyle.SHORT_PREFIX_STYLE);
//	}
	
}
