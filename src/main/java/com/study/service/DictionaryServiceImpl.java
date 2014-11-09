package com.study.service;

import javax.annotation.Resource;
import javax.inject.Named;

import com.study.dao.IDictionaryDao;
import com.study.dao.base.IGeneralORMDao;
import com.study.model.Dictionary;
import com.study.service.base.AbstractBaseService;

@Named("dictionaryService")
public class DictionaryServiceImpl extends AbstractBaseService<Dictionary> implements IDictionaryService {

	private static final long serialVersionUID = 2127822065371631043L;

	@Override
	@Resource(name = "dictionaryDao")
	public void setGeneralDao(IGeneralORMDao<Dictionary, Long> dictionaryDao) {
		super.setGeneralDao(dictionaryDao);
	}

	public Dictionary getByWord(String word){
		IDictionaryDao dao = (IDictionaryDao) this.getGeneralDao();
		return dao.getByWord(word);
	}

}
