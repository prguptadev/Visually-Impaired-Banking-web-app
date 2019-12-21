package com.scb;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Test {

	@RequestMapping(path="/test",method=RequestMethod.GET)
	public String test(){
		return "test";
	}
}
