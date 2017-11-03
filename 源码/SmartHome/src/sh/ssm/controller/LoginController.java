package sh.ssm.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import sh.ssm.po.Member;
import sh.ssm.po.ShAdmin;
import sh.ssm.service.ShAdminService;
import sh.ssm.service.ShMemberService;

@Controller
@RequestMapping("/jsp")
public class LoginController {
@Autowired
private ShMemberService shMemberService;
@Autowired
private ShAdminService shAdminService;
@RequestMapping(value="/login",method=RequestMethod.GET)
public String login(HttpServletRequest request) throws Exception
{
	return "adminLogin";
}
@RequestMapping(value="/adminlogin",method=RequestMethod.POST)
public String loginCheck(HttpServletRequest request) throws Exception
{
	String id_card=request.getParameter("username");
	String password=request.getParameter("password");
	ShAdmin shAdmin=null;
		shAdmin=shAdminService.select(Integer.parseInt(id_card));
	if(shAdmin==null)
		return "adminlogin";
	else{
		String data_password=shAdmin.getPassword();
		if(data_password.equals(password))
		{
			return "userLogin";
		}
	}
	return "adminLogin";
}
}
