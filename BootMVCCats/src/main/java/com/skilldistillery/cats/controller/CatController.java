package com.skilldistillery.cats.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.JPACats.entities.Cats;
import com.skilldistillery.cats.data.catDAO;

@Controller
public class CatController {
//	@Autowired
//	private catDAO dao;
	
	@RequestMapping(path="/")
	public String index(Model model) {
//		model.addAttribute("allCats", dao.addCat());  
		
		return "WEB-INF/index.jsp";
	}
//	@RequestMapping(path = "getCat.do", method = RequestMethod.GET)
//	  public ModelAndView getCats(@RequestParam("fid") int fid) {
//	    ModelAndView mv = new ModelAndView();
//
//	    Cats cats = dao.findById(fid);  
//	    // film is unmanaged after it is outside of the transaction that exists in the DAO
//
//	    mv.addObject("cat", cats);
//	    mv.setViewName("WEB-INF/film/show.jsp");
//	    return mv;
//	  }
	
}
