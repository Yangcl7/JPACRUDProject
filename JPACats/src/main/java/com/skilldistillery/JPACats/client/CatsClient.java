package com.skilldistillery.JPACats.client;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.skilldistillery.JPACats.entities.Cats;

public class CatsClient {
	
	public static void main(String[] args) {
		
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("catlist");
	EntityManager em = emf.createEntityManager();

	
	Cats c = em.find(Cats.class, 2);
	System.out.println(c);
	
	emf.close();
	em.close();
	}
}
