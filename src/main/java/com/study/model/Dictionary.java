package com.study.model;


/**
 * @author jinwanlin
 *
 */
@SuppressWarnings("serial")
public class Dictionary extends AbstractBaseModel {

	private String word;
	
	private int searchCount;

	public String getWord() {
		return word;
	}

	public void setWord(String word) {
		this.word = word;
	}

	public int getSearchCount() {
		return searchCount;
	}

	public void setSearchCount(int searchCount) {
		this.searchCount = searchCount;
	}


}
