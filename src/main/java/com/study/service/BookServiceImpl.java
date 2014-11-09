package com.study.service;

import javax.annotation.Resource;
import javax.inject.Named;

import com.study.dao.base.IGeneralORMDao;
import com.study.model.Book;
import com.study.service.base.AbstractBaseService;

@Named("bookService")
public class BookServiceImpl extends AbstractBaseService<Book> implements IBookService {

	private static final long serialVersionUID = 2127822065371631043L;

	@Override
	@Resource(name = "bookDao")
	public void setGeneralDao(IGeneralORMDao<Book, Long> bookDao) {
		super.setGeneralDao(bookDao);
	}



}
