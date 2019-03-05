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

	@RequestMapping(path = "/")
	public String index(Model model) {
		List<Cats> catList = dao.allCats();
		model.addAttribute("allCats", catList);

		return "WEB-INF/index.jsp";
	}

	@RequestMapping(path = "getCat.do", method = RequestMethod.GET)
	public ModelAndView getCats(@RequestParam("fid") int fid) {
		ModelAndView mv = new ModelAndView();

		Cats cats = dao.findById(fid);
		// film is unmanaged after it is outside of the transaction that exists in the
		// DAO

		mv.addObject("cat", cats);
		mv.setViewName("WEB-INF/show/show.jsp");
		return mv;
	}

	@RequestMapping(path = "listACat.do", method = RequestMethod.GET)
	public ModelAndView listACat(Cats cats) {
		ModelAndView mv = new ModelAndView();

		dao.addCat(cats);
		mv.addObject("cat", cats);
		mv.setViewName("WEB-INF/show/show.jsp");
		return mv;
	}
	@RequestMapping(path = "deleteCat.do", method = RequestMethod.GET)
	public Boolean deleteCat(int id) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("catlist");
		EntityManager em = emf.createEntityManager();
		Cats cats= em.find(Cats.class, id);
		
		em.getTransaction().begin ();
		em.remove(cats);
		em.getTransaction().commit();
		boolean result = !em.contains(cats);
		em.close();
		return result;
		
	}

}
