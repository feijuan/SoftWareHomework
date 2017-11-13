package sh.ssm.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import sh.ssm.po.Member;
import sh.ssm.service.ShMemberService;

@Controller
@RequestMapping(value="/jsp")
public class UserLoginController {
   @Autowired
   private ShMemberService shMemberService;
   @RequestMapping(value="/userlogin",method=RequestMethod.POST)
   public String check(HttpServletRequest request)throws Exception
   {
	   String id_card=request.getParameter("loginname");
	   System.out.println(id_card);
	   String password=request.getParameter("password");
	   Member tem_member=shMemberService.select(id_card);
	   if(tem_member==null)
		   return "usernull";
	   String data_password=tem_member.getPassword();
	   if(data_password.equals(password))
	   {
		   return "adminLogin";
	   }
	   return "erro";
   }
}
