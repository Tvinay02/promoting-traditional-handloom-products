package com.example.demo;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface Dao extends CrudRepository<Uregister,Integer>
{
	Uregister findById(int id);
	@Query("select password from Uregister where id=?1")
	public String checkdetalis(int id);

  
}
