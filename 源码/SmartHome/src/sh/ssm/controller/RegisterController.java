package sh.ssm.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import sh.ssm.po.Member;
import sh.ssm.service.ShMemberService;

@Controller
@RequestMapping("/jsp")
public class RegisterController {
  @Autowired
  private ShMemberService shMemberService;
  @RequestMapping(value="/user_register",method=RequestMethod.POST)
  public String register(HttpServletRequest request)throws Exception
  {
	  String id_card=request.getParameter("id_card");
	  Member temp_member=shMemberService.select(id_card);
	  if(temp_member==null)
	  {   Member record=new Member();
		  record.setIdcard(id_card);
		  record.setPassword(request.getParameter("password"));
		  record.setName(request.getParameter("username"));
		  record.setHomeId(request.getParameter("home_id"));
		  record.setTelphone(Integer.parseInt(request.getParameter("telphone")));
		  record.setOwnerFlag(Integer.parseInt(request.getParameter("owner_flag")));
		  shMemberService.insert(record);
		  return "userlogin";
	  }
	  else
		  return "userregister";
  }
}
