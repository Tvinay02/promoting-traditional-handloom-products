package com.example.demo;

import javax.persistence.Entity;
import javax.persistence.Id;
@Entity
public class manufacturer {
	
	@Id
 private int id;
 private String  pname;
 private String orginated;
 private Double price;
 private String image;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}

public String getPname() {
	return pname;
}
public void setPname(String pname) {
	this.pname = pname;
}
public String getOrginated() {
	return orginated;
}
public void setOrginated(String orginated) {
	this.orginated = orginated;
}

public Double getPrice() {
	return price;
}

public void setPrice(Double price) {
	this.price = price;
}
public String getImage() {
	return image;
}
public void setImage(String image) {
	this.image = image;
}
@Override
public String toString() {
	return "manufacturer [id=" + id + ", pname=" + pname + ", orginated=" + orginated + ", price=" + price + ", image="
			+ image + "]";
}
public manufacturer() {
	super();
}

}
