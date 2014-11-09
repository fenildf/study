package com.study.service;

import com.study.model.Dictionary;
import com.study.service.base.IGeneralService;

public interface IDictionaryService extends IGeneralService<Dictionary> {

	public Dictionary getByWord(String word);
}
