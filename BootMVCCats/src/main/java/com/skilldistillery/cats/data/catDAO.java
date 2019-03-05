package com.skilldistillery.cats.data;

import java.util.List;

import com.skilldistillery.JPACats.entities.Cats;

public interface catDAO {
	
	Cats findById(int id);

	Cats addCat(Cats cats);
	
	List<Cats> allCats();

	Boolean deleteCat(int id);

	Cats updateCat(int id, Cats cat);

 
}
