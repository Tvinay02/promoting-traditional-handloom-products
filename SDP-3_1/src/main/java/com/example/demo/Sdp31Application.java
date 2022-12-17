package com.example.demo;

import java.io.File;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class Sdp31Application {

	public static void main(String[] args) {
	     new File(Ucontroller.uploadDirectory).mkdir();
		
		SpringApplication.run(Sdp31Application.class, args);
	}

}
