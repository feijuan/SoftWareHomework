package sh.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class StartController
{
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String userLogin()
	{
		return "jsp/userLogin";
	}
	@RequestMapping(value="/register",method=RequestMethod.GET)
	public String userRegister()
	{
		return "jsp/userRegister";
	}
	@RequestMapping(value="/adminlogin",method=RequestMethod.GET)
	public String adminLogin()
	{
		return "jsp/adminLogin";
	}
}
