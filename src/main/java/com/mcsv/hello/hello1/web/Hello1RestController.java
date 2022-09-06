package com.mcsv.hello.hello1.web;

//import org.springframework.http.HttpStatus;
//import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Hello1RestController {
	
	@GetMapping("/hello/{id}")
	public String helloWorld(@PathVariable Integer id) {		
		return "Hello World " + id;
	}
	
}
