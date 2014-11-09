package com.study.utils;

public class StringUtil {

	public static String convertStr(String str) {
		str = "<p>"+str+"</p>";
		str = str.replaceAll("&", "&amp;");
		str = str.replaceAll("\"", "&quot;");
		str = str.replaceAll("<", "&lt;");
		str = str.replaceAll(">", "&gt;");
		str = str.replaceAll("\t", "&nbsp;&nbsp;");
		str = str.replaceAll("\r", "</p><p>");
		return str;
	}

}
