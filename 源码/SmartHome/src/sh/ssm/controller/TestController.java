package sh.ssm.controller;

import java.lang.reflect.Array;
import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;






import sh.ssm.po.Home;
import sh.ssm.po.ShAdmin;
import sh.ssm.service.ShAdminService;
import sh.ssm.service.ShHomeService;
import sh.ssm.tcp.SocketOperate;





@Controller
public class TestController
{
   @Autowired
   private ShHomeService shHomeService;
   @RequestMapping("/login")
   public String fule(HttpServletRequest request) throws Exception
   {
	   Home home=new Home();
	home.setHomeId(12345);
	 home.setHomeName("ÎÒµÄ¼Ò");
	 shHomeService.insert(home);
	 return "login";
   }
   
}
