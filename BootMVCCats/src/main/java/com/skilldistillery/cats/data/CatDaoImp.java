package com.skilldistillery.cats.data;

import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.JPACats.entities.Cats;


@Transactional
@Service
public class CatDaoImp implements catDAO {


	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Cats findById(int id) {
		
		return em.find(Cats.class, id);
	}
	@Override
	public Cats addCat(Cats cats) {
		em.getTransaction().begin();
		em.persist(cats);
		em.flush();
		em.getTransaction().commit();
		em.close();
		
		return cats;
	}
	
}
