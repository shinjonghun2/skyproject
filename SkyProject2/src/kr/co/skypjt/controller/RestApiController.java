package kr.co.skypjt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import kr.co.skypjt.service.UserService;


@RestController
public class RestApiController {
         
	@Autowired
	private UserService userService; //서비스 매소드 주입

    @GetMapping("/checkUserIdExist/{user_id}")
   public String checkUserIdExist(@PathVariable String user_id) {
    	
    	boolean chk =userService.checkuserIdExist(user_id);
    	
    	return chk + "";
    }
 }
