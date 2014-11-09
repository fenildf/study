package com.study.service;

import java.util.List;

import com.study.model.Dictionary;
import com.study.service.base.IGeneralService;

public interface IDictionaryService extends IGeneralService<Dictionary> {

	public Dictionary getByWord(String word);
	

	public List<Dictionary> list(int page, int size);
	

	public int count();
}
