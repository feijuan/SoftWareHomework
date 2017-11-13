package sh.ssm.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import sh.ssm.service.ShSensorStatusService;

@Controller

public class SensorManageController
{
	@Autowired
	ShSensorStatusService sensorStatusService;
     @RequestMapping("/sensorManageForm")
     public String sensorManageForm()
     {
    	 return "";
     }
     @RequestMapping("/sensorManageList")
     public String sensorManageList()
     {
    	 return "";
     }
     @RequestMapping("/sensorManageShow")
     public String sensorManageShow()
     {
    	 return "";
     }
     @RequestMapping("/sensorStatusShow")
     public String sensorStatusShow(HttpSession session,Model model)
     {
    	 String id_cardString=(String) session.getAttribute("user_id");
    	 System.out.println("idcard:"+id_cardString);
    	 System.out.println("home_id"+sensorStatusService.selectByidcard(id_cardString).get(0).getHomeId());
    	 model.addAttribute("sensorStatusList",sensorStatusService.selectByidcard(id_cardString));
    	 return "jsp/sensorStatusShow";
     }
     
}
