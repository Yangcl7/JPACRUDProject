package com.skilldistillery.cats.data;

import java.util.List;

import com.skilldistillery.JPACats.entities.Cats;

public interface catDAO {
	Cats cat = new Cats();
	
	Cats findById(int id);

	public Cats addCat(Cats cats);

 
}
