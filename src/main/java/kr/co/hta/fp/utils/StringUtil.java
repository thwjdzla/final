package kr.co.hta.fp.utils;

import java.text.SimpleDateFormat;
import java.time.Instant;
import java.time.LocalDate;
import java.time.Period;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.Date;

public class StringUtil {
	
	private static SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일");
	private static SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd");
	
	public static Date strToDate(String yyyyMMdd) {
		try {
			Date date = sdf.parse(yyyyMMdd);
			return date;
		} catch (Exception e) {
			return null;
		}
	}
	
	public static Date strToDate2(String yyyyMMdd) {
		try {
			Date date = sdf2.parse(yyyyMMdd);
			return date;
		} catch (Exception e) {
			return null;
		}
	}
		
	public static String dateToStr(Date yyyyMMdd) {
		try {
			String str = sdf2.format(yyyyMMdd);
			return str;
		} catch (Exception e) {
			return null;
		}
	}	
	
	public static String dateToStr2(Date yyyyMMdd) {
		try {
			String str = sdf.format(yyyyMMdd);
			return str;
		} catch (Exception e) {
			return null;
		}
	}	
	// 두 날짜 사이 구하기
	public static long subtractDate(String firstDate, String secondDate) throws Exception {
		LocalDate first = LocalDate.parse(firstDate, DateTimeFormatter.ofPattern("yyyy/MM/dd"));
		LocalDate second = LocalDate.parse(secondDate, DateTimeFormatter.ofPattern("yyyy/MM/dd"));
		
		return ChronoUnit.DAYS.between(first, second);
		
	}
	
	public static long subtractDate2(String firstDate, String secondDate) throws Exception {
		LocalDate first = LocalDate.parse(firstDate, DateTimeFormatter.ofPattern("yyyy년 MM월 dd일"));
		LocalDate second = LocalDate.parse(secondDate, DateTimeFormatter.ofPattern("yyyy년 MM월 dd일"));
		
		return ChronoUnit.DAYS.between(first, second);
		
	}
	
	public static long subtractDate3(String firstDate, String secondDate) throws Exception {
		LocalDate first = LocalDate.parse(firstDate, DateTimeFormatter.ofPattern("yyyy-MM-dd"));
		LocalDate second = LocalDate.parse(secondDate, DateTimeFormatter.ofPattern("yyyy-MM-dd"));
		
		return ChronoUnit.DAYS.between(first, second);
		
	}

	public static long subtractDate4(Date firstDate, Date secondDate) throws Exception {
		LocalDate first =Instant.ofEpochMilli(firstDate.getTime()).atZone(ZoneId.systemDefault()).toLocalDate();
		LocalDate second =Instant.ofEpochMilli(secondDate.getTime()).atZone(ZoneId.systemDefault()).toLocalDate();
		return ChronoUnit.DAYS.between(first, second);
	}
	
	public static String strReplaceSlash(String strDate) {
		strDate = strDate.replace("년 ", "/");
		strDate = strDate.replace("월 ", "/");
		strDate = strDate.replace("일", "");
		return strDate;
	}
	
	public static Boolean dateIsBefore(String firstDate, String secondDate) {
		LocalDate first = LocalDate.parse(firstDate, DateTimeFormatter.ofPattern("yyyy-MM-dd"));
		LocalDate second = LocalDate.parse(secondDate, DateTimeFormatter.ofPattern("yyyy-MM-dd"));
		
		boolean result = first.isBefore(second);
		return result;
	}
}
