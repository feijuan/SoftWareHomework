package sh.ssm.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import sh.ssm.po.Member;
import sh.ssm.service.ShMemberService;

@Controller

public class RegisterController {
	@Autowired
	  private ShMemberService shMemberService;
	  @RequestMapping(value="/user_register",method=RequestMethod.POST)
	  public String register(HttpServletRequest request)throws Exception
	  {
		  String id_card=request.getParameter("id_card");//通过id_card属性获得用户输入的身份证号
		  System.out.println(id_card);
		  Member temp_member=shMemberService.select(id_card);
		  if(temp_member==null)//如果用户名不存在则可以注册
		  {   Member record=new Member();
			  record.setIdcard(id_card);
			  record.setPassword(request.getParameter("password"));
			  record.setName(request.getParameter("username"));
			  record.setHomeId(request.getParameter("home_id"));
			  record.setTelphone(request.getParameter("telephone"));
			  record.setOwnerFlag(1);
			  shMemberService.insert(record);
			  return "jsp/userLogin";//注册成功返回到登陆页面
		  }
		  else
			  return "jsp/userRegister";//不成功则返回注册页面
	  }
   @RequestMapping(value="/CheckId",method=RequestMethod.POST)
   public void CheckId(HttpServletRequest request,HttpServletResponse response) throws IOException 
   {
	   System.out.println("身份证号验证");
	   Member member=shMemberService.select(request.getParameter("idcard"));
	   if(member==null)
	   {
		  response.getWriter().print(true);
	   }
	   else response.getWriter().print(false);
   }
   @RequestMapping(value="/CheckPhone",method=RequestMethod.POST)
   public void CheckPhone(HttpServletRequest request,HttpServletResponse response) throws IOException 
   {
	   System.out.println("手机号验证");
	   System.out.println();
	   Member member=shMemberService.selectByPhone(request.getParameter("telephone"));
	   if(member==null)
	   {
		  response.getWriter().print(true);
	   }
	   else response.getWriter().print(false);
   }
   @RequestMapping(value="/CheckHomeId",method=RequestMethod.POST)
   public void CheckHomeId(HttpServletRequest request,HttpServletResponse response) throws IOException 
   {
	   System.out.println("家庭号验证"+request.getParameter("home_id"));
	   Member[] member=shMemberService.selectByHomeId(request.getParameter("home_id")); 
	   if(member.length==0)
	   {
	   response.getWriter().print(false);}
	   else
	   response.getWriter().print(true);
   }
}
