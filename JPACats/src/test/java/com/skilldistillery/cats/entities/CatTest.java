package com.skilldistillery.cats.entities;

import static org.junit.Assert.fail;
import static org.junit.jupiter.api.Assertions.assertEquals;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;

import com.skilldistillery.JPACats.entities.Cats;

class CatTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Cats cat;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("catlist");

	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		cat = em.find(Cats.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
	}
	@Test
	public void test_find_a_cat_by_its_id() {
		
		assertEquals("Tom", cat.getName());
		
	}
	@Test
	public void test_find_all_cats(){
		String qur = "SELECT c FROM Cats c";
		List<Cats> cats = em.createQuery(qur, Cats.class).getResultList();
		assertEquals(6, cats.size());
		
	}

	@Disabled
	@Test
	void test() {
		fail("Not yet implemented");
	}
}

