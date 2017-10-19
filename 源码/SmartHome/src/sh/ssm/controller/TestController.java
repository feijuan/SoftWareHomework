package sh.ssm.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import sh.ssm.po.User;
import sh.ssm.service.UserService;




@Controller
public class TestController
{
   @Autowired
   private UserService userService;
   @RequestMapping("/test")
   public String test(HttpServletRequest request) throws Exception
   {
	   String nameString=request.getParameter("name");
	   System.out.println(nameString);
	   
	   return "index";
   }
   
}
