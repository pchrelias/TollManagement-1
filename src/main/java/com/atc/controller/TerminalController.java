package com.atc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/terminal")
public class TerminalController {
  
  @GetMapping
  public String terminalHome(){
	return "terminal/home";
  }
  
}