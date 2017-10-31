package sh.ssm.controller;

import java.lang.reflect.Array;
import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;




import sh.ssm.po.ShAdmin;
import sh.ssm.service.ShAdminService;
import sh.ssm.tcp.SocketOperate;





@Controller
public class TestController
{
   @Autowired
   private ShAdminService shAdminService;
   @RequestMapping("/login")
   public String fule(HttpServletRequest request) throws Exception
   {
	 String name=request.getParameter("name");
	 System.out.println(name);
	 ShAdmin shAdmin=new ShAdmin();
	 shAdmin.setAdminName("wwww");
	 shAdmin.setPassword("wwww");
	 shAdmin.setTelephone("13465816558");
	 shAdminService.insert(shAdmin);
	 return "login";
   }
   
}
