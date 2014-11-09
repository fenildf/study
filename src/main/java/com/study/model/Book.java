package com.study.model;


/**
 * @author jinwanlin
 *
 */
@SuppressWarnings("serial")
public class Book extends AbstractBaseModel {

	private String title;
	
	private String content;

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

}
