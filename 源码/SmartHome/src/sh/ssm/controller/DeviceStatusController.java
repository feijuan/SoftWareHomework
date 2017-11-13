package sh.ssm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import sh.ssm.po.DeviceStatus;
import sh.ssm.service.ShDeviceStatusService;

@Controller
public class DeviceStatusController {
	@Autowired
	private ShDeviceStatusService shDeviceStatusService;
      @RequestMapping("/deviceStatus")
      public String deviceStatusShow(HttpServletRequest request,HttpSession session,Model model)
      {
    	  List<DeviceStatus> deviceStatusList=shDeviceStatusService.selectByidcard(session.getAttribute("user_id").toString());
    	  model.addAttribute("deviceStatusList", deviceStatusList);
    	  return "jsp/deviceStatus";
      }
}
