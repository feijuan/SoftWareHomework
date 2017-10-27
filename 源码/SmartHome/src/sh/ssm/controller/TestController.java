package sh.ssm.controller;

import java.lang.reflect.Array;
import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import sh.ssm.tcp.SocketOperate;





@Controller
public class TestController
{
  
   @RequestMapping("/login")
   public void fule(HttpServletRequest request, @RequestParam("param1") String param1,
           @RequestParam("param2")String param2) throws Exception
   {
	  System.out.println(param1+param2); 
	  
	   //return "login";
   }
   
}
