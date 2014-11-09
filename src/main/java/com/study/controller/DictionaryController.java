package com.study.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestBindingException;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.study.model.Dictionary;
import com.study.service.IDictionaryService;

@Controller
@RequestMapping("/dictionary")
public class DictionaryController {

	@Resource(name = "dictionaryService")
	private IDictionaryService dictionaryService;

	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String index(Model model) throws ServletRequestBindingException {

		List<Dictionary> dictionarys = dictionaryService.findAll();
		model.addAttribute("dictionarys", dictionarys);

		return "dictionary/list";
	}

//	@RequestMapping(value = "show", method = RequestMethod.GET)
//	public String index(Model model, @RequestParam("id") Long id) throws ServletRequestBindingException {
//
//		Dictionary dictionary = dictionaryService.getByPrimaryKey(id);
//		model.addAttribute("dictionary", dictionary);
//
//		return "dictionary/show";
//	}

	@ResponseBody
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public void delete(Model model, @RequestParam("id") Long id) {
		dictionaryService.deleteByPrimaryKey(id);
	}
	
//	@RequestMapping(value = "/form", method = RequestMethod.GET)
//	public String form(Model model, @RequestParam(value = "id", required = false) Long id) {
//
//		Dictionary dictionary;
//		if (id != null) {
//			dictionary = dictionaryService.getByPrimaryKey(id);
//		} else {
//			dictionary = new Dictionary();
//		}
//		model.addAttribute("dictionary", dictionary);
//
//		return "dictionary/form";
//	}


	@ResponseBody
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public void save_or_update(Model model, 
			@RequestParam("word") String word) {

		Dictionary dictionary = dictionaryService.getByWord(word);
		if(dictionary == null){
			dictionary = new Dictionary();
			dictionary.setWord(word);
			dictionary.setSearchCount(1);
		}else{
			dictionary.setSearchCount(dictionary.getSearchCount()+1);
		}
		dictionaryService.saveOrUpdate(dictionary);

	}
}
