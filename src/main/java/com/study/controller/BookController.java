package com.study.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestBindingException;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.study.model.Book;
import com.study.service.IBookService;
import com.study.utils.StringUtil;

@Controller
@RequestMapping("/book")
public class BookController {

	@Resource(name = "bookService")
	private IBookService bookService;

	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String index(Model model) throws ServletRequestBindingException {

		List<Book> books = bookService.findAll();
		model.addAttribute("books", books);

		return "book/list";
	}

	@RequestMapping(value = "show", method = RequestMethod.GET)
	public String index(Model model, @RequestParam("id") Long id) throws ServletRequestBindingException {

		Book book = bookService.getByPrimaryKey(id);
		model.addAttribute("book", book);
		model.addAttribute("title", book.getTitle());

		return "book/show";
	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(Model model, @RequestParam("id") Long id) {
		bookService.deleteByPrimaryKey(id);
		return "redirect:/app/book/list";
	}
	
	@RequestMapping(value = "/form", method = RequestMethod.GET)
	public String form(Model model, @RequestParam(value = "id", required = false) Long id) {

		Book book;
		if (id != null) {
			book = bookService.getByPrimaryKey(id);
		} else {
			book = new Book();
		}
		model.addAttribute("book", book);

		return "book/form";
	}

	@RequestMapping(value = "/save_or_update", method = RequestMethod.POST)
	public String save_or_update(Model model, 
			@RequestParam(value = "id", required = false) Long id, 
			@RequestParam("title") String title, 
			@RequestParam("content") String content) {

		Book book;
		if (id == null) { // 添加
			book = new Book();
		} else { // 更新
			book = bookService.getByPrimaryKey(id);
		}

		book.setTitle(title);
		book.setContent(StringUtil.convertStr(content));
		bookService.saveOrUpdate(book);

		model.addAttribute("book", book);
		return "redirect:/app/book/show?id=" + book.getId();
	}
}
