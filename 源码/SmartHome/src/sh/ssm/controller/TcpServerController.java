package sh.ssm.controller;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import sh.ssm.po.Data;
import sh.ssm.po.Sensor;
import sh.ssm.service.ShDataService;
import sh.ssm.service.ShSensorService;

@Controller
public class TcpServerController 
{
	@Autowired
	private ShDataService shDataService;
	@Autowired
	private ShSensorService shSensorService;
	@RequestMapping("/tcpdata")
	public String TcpData (HttpServletRequest request) throws Exception
	{
		String dataString=request.getParameter("data");
		Data data=null;
		JSONObject jsonObject=JSONObject.fromObject(dataString);
		String homeid=(String) jsonObject.get("homeid");
		String collect_time=(String) jsonObject.get("time");
		JSONObject bedroomJson=JSONObject.fromObject(jsonObject.getString("bedroom"));
		JSONObject kitchenJson=JSONObject.fromObject(jsonObject.getString("kitchen"));
		JSONObject livingroomJson=JSONObject.fromObject(jsonObject.getString("livingroom"));
		System.out.println("homeid:"+homeid);
		System.out.println("bedroom-1:"+bedroomJson.get("1"));
		System.out.println("bedroom-2:"+bedroomJson.get("2"));
		System.out.println("bedroom-3:"+bedroomJson.get("3"));
		System.out.println("bedroom-4:"+bedroomJson.get("4"));
		System.out.println("kitchen-1:"+bedroomJson.get("1"));
		System.out.println("kitchen-2:"+bedroomJson.get("2"));
		System.out.println("kitchen-3:"+bedroomJson.get("3"));
		System.out.println("kitchen-4:"+bedroomJson.get("4"));
		System.out.println("livingroom-1:"+bedroomJson.get("1"));
		System.out.println("livingroom-2:"+bedroomJson.get("2"));
		System.out.println("livingroom-3:"+bedroomJson.get("3"));
		System.out.println("livingroom-4:"+bedroomJson.get("4"));
		Sensor[] sensor=shSensorService.sensor(2, homeid);
		for(int ii=0;ii<sensor.length;ii++)
		{
			System.out.println(sensor[ii].getHomeId());
		}
		for(int ii=0;ii<sensor.length;ii++)
		{
			switch(Integer.parseInt(sensor[ii].getSensorType()))
			{
			case 1:data=new Data();
			       data.setCollectTime(collect_time);
			       data.setData(bedroomJson.getString("1"));
			       data.setDataType("1");
			       data.setSensorId(sensor[ii].getSensorId());
			       shDataService.insert(data);
			       break;
			case 2:data=new Data();
		       data.setCollectTime(collect_time);
		       data.setData(bedroomJson.getString("2"));
		       data.setDataType("2");
		       data.setSensorId(sensor[ii].getSensorId());
		       shDataService.insert(data);
		       break;
			case 3:data=new Data();
		       data.setCollectTime(collect_time);
		       data.setData(bedroomJson.getString("3"));
		       data.setDataType("3");
		       data.setSensorId(sensor[ii].getSensorId());
		       shDataService.insert(data);
		       break;
			case 4:  data=new Data();
		       data.setCollectTime(collect_time);
		       data.setData(bedroomJson.getString("4"));
		       data.setDataType("4");
		       data.setSensorId(sensor[ii].getSensorId());
		       shDataService.insert(data);
		       break;
			}
		}
		sensor=shSensorService.sensor(3, homeid);
		for(int ii=0;ii<sensor.length;ii++)
		{
			switch(Integer.parseInt(sensor[ii].getSensorType()))
			{
			case 1:data=new Data();
			       data.setCollectTime(collect_time);
			       data.setData(kitchenJson.getString("1"));
			       data.setDataType("1");
			       data.setSensorId(sensor[ii].getSensorId());
			       shDataService.insert(data);
			       break;
			case 2:data=new Data();
		       data.setCollectTime(collect_time);
		       data.setData(kitchenJson.getString("2"));
		       data.setDataType("2");
		       data.setSensorId(sensor[ii].getSensorId());
		       shDataService.insert(data);
		       break;
			case 3:data=new Data();
		       data.setCollectTime(collect_time);
		       data.setData(kitchenJson.getString("3"));
		       data.setDataType("3");
		       data.setSensorId(sensor[ii].getSensorId());
		       shDataService.insert(data);
		       break;
			case 4:  data=new Data();
		       data.setCollectTime(collect_time);
		       data.setData(kitchenJson.getString("4"));
		       data.setDataType("4");
		       data.setSensorId(sensor[ii].getSensorId());
		       shDataService.insert(data);
		       break;
			}
		}
		sensor=shSensorService.sensor(4, homeid);
		for(int ii=0;ii<sensor.length;ii++)
		{
			switch(Integer.parseInt(sensor[ii].getSensorType()))
			{
			case 1:data=new Data();
			       data.setCollectTime(collect_time);
			       data.setData(livingroomJson.getString("1"));
			       data.setDataType("1");
			       data.setSensorId(sensor[ii].getSensorId());
			       shDataService.insert(data);
			       break;
			case 2:data=new Data();
		       data.setCollectTime(collect_time);
		       data.setData(livingroomJson.getString("2"));
		       data.setDataType("2");
		       data.setSensorId(sensor[ii].getSensorId());
		       shDataService.insert(data);
		       break;
			case 3:data=new Data();
		       data.setCollectTime(collect_time);
		       data.setData(livingroomJson.getString("3"));
		       data.setDataType("3");
		       data.setSensorId(sensor[ii].getSensorId());
		       shDataService.insert(data);
		       break;
			case 4:  data=new Data();
		       data.setCollectTime(collect_time);
		       data.setData(livingroomJson.getString("4"));
		       data.setDataType("4");
		       data.setSensorId(sensor[ii].getSensorId());
		       shDataService.insert(data);
		       break;
			}
		}
		
		return "login";
	}
}
