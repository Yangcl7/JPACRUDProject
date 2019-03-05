package com.skilldistillery.cats.controller;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

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
	@Autowired
	private catDAO dao;

	@RequestMapping(path = "/", method = RequestMethod.GET)
	public String index() {
		return "WEB-INF/index.jsp";
	}

	@RequestMapping(path = "getCat.do", method = RequestMethod.GET)
	public ModelAndView getCats(@RequestParam("fid") int fid) {
		ModelAndView mv = new ModelAndView();

		Cats cats = dao.findById(fid);
		// film is unmanaged after it is outside of the transaction that exists in the
		// DAO

		mv.addObject("cat", cats);
		mv.setViewName("WEB-INF/ListACat.jsp");
		return mv;
	}

	@RequestMapping(path = "listingCat.do", params = {"catId" }, method = RequestMethod.POST)
	public ModelAndView listACat(Cats cats) {
		ModelAndView mv = new ModelAndView();
		dao.addCat(cats);
		mv.addObject("catId", cats);
		mv.setViewName("WEB-INF/ListACat.jsp");
		return mv;
		
	}
	@RequestMapping(path = "deleteCat.do", method = RequestMethod.POST)
	public ModelAndView deleteCat(@RequestParam(value = "catId")int id) {
		ModelAndView mv = new ModelAndView();
		
		boolean test = dao.deleteCat(id);
		mv.addObject("catId", test);
		mv.setViewName("WEB-INF/deleteCat.jsp");
		return mv;
		
	}
	@RequestMapping(path = "updateCat.do", params = { "catId" }, method = RequestMethod.POST)
	public ModelAndView updateCat(@RequestParam("catId") int id, Cats updateCat) {
		ModelAndView mv = new ModelAndView();
		System.out.println(updateCat);
		System.out.println("Cat id is " + id);
		
		Cats c = dao.updateCat(id, updateCat);

		mv.addObject("catId", c);
		mv.setViewName("WEB-INF/updateCat.jsp");
		return mv;

	}
	@RequestMapping(path = "addCat.do", params = { "catId" }, method = RequestMethod.POST)
	public ModelAndView addCat(Cats cat) {
		ModelAndView mv = new ModelAndView();
		dao.addCat(cat);
		mv.addObject("cat", cat);
		mv.setViewName("WEB-INF/newCat.jsp");
		return mv;

	}
	

}
