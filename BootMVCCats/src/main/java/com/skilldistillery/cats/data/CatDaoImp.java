package com.skilldistillery.cats.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.JPACats.entities.Cats;


@Transactional
@Service
public class CatDaoImp implements catDAO {
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("catlist");


	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Cats findById(int id) {
		em = emf.createEntityManager();
		Cats findCat = em.find(Cats.class, id);
		
		return findCat;
	}
	
	@Override
	public Cats addCat(Cats cats) {
		em = emf.createEntityManager();
		em.getTransaction().begin();
		em.persist(cats);
		em.flush();
		em.getTransaction().commit();
		em.close();
		
		return cats;
	}

	@Override
	public List<Cats> allCats() {
		String qur = "SELECT c FROM Cats c";
		List<Cats> catList = em.createQuery(qur, Cats.class).getResultList();
		
		return catList;
	}
	
	@Override
	public Boolean deleteCat(int id) {
		em = emf.createEntityManager();
		Cats cat = em.find(Cats.class, id);
		
		em.getTransaction().begin();
		em.remove(cat);
		em.getTransaction().commit();
		System.out.println(cat.getId());
		boolean result = !em.contains(cat);
		
		return result;
		
		
	}
	@Override
	public Cats updateCat(int id, Cats cat) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("catlist");
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		Cats c = em.find(Cats.class, id);
		c.setName(cat.getName());
		c.setSize(cat.getSize());
		c.setFur_amount(cat.getFur_amount());
		c.setBirthDate(cat.getBirthDate());
		c.setPurchasePrice(cat.getPurchasePrice());
		c.setBiography(cat.getBiography());

		em.getTransaction().commit();
		return c;
	}
	

	
}
