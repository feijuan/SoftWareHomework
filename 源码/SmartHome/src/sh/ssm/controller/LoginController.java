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

@RequestMapping(value="/adminlogin",method=RequestMethod.POST)
public String loginCheck(HttpServletRequest request) throws Exception
{
	String id_card=request.getParameter("username");//从前台通过username来获取填写的管理员账号
	String password=request.getParameter("password");//从前台通过password来获取填写的密码
	ShAdmin shAdmin=null;
		shAdmin=shAdminService.select(Integer.parseInt(id_card));
	if(shAdmin==null)//看用户输入的用户名是否为空
		return "adminlogin";//如果为空返回登陆页面
	else{
		String data_password=shAdmin.getPassword();//如果不为空检查密码是否与数据库该用户的一致
		if(data_password.equals(password))
		{
			return "adminindex";//如果正确跳转到管理员界面
		}
	}
	return "adminLogin";//不然回到登陆页面
}
}
