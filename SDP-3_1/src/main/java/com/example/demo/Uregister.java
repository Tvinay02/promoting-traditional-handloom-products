package com.example.demo;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Uregister {
	@Id
private int id;
private String name;
private String password;
private String rpassword;
private String names;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getRpassword() {
	return rpassword;
}
public void setRpassword(String rpassword) {
	this.rpassword = rpassword;
}
public String getNames() {
	return names;
}
public void setNames(String names) {
	this.names = names;
}

}
