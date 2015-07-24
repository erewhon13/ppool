package com.ppool.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class ChangeWord {
	
	public static String dateToString(Date date){
		SimpleDateFormat f = new SimpleDateFormat("yy년 MM월 dd일");
		String string = f.format(date);
		return string;
	}
	
}
