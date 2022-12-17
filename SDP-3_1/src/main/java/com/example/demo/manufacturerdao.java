package com.example.demo;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface manufacturerdao  extends CrudRepository<manufacturer,Integer>
{
	List<manufacturer> findAll();
	
	
} 

