package sh.ssm.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import sh.ssm.po.Member;
import sh.ssm.service.ShMemberService;

@Controller
public class UserLoginController {
   @Autowired
   private ShMemberService shMemberService;
   @RequestMapping(value="/userlogin",method=RequestMethod.POST)
   public String check(HttpServletRequest request,HttpSession session)throws Exception
   {  
	   String id_card=request.getParameter("id_card");//通过id_card来获得前台用户填写的登录名
	   System.out.println(id_card);
	   session.setAttribute("user_id", id_card);
	   String password=request.getParameter("password");//通过password来获得前台填写的密码
	   Member tem_member=shMemberService.select(id_card);//通过id_card来搜索数据库中是否有该用户
	   if(tem_member==null)
		   return "jsp/userLogin";//如果没有该用户返回到登陆页面
	   String data_password=tem_member.getPassword();//如果从数据库获取该用户的密码
	   if(data_password.equals(password))//检查是否一致，如果一致，则返回index页面
	   {
		   return "jsp/index";
	   }
	   return "jsp/userLogin";//否则返回到登陆界面
   }
}
