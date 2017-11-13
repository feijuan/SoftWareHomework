package sh.ssm.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javassist.expr.NewArray;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.StaticApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import sh.ssm.po.Data;
import sh.ssm.po.DataTranser;
import sh.ssm.po.Sensor;
import sh.ssm.service.ShDataService;
import sh.ssm.service.ShMemberService;
import sh.ssm.service.ShSensorService;

@Controller
public class DataManageController
{
	@Autowired
	private ShDataService shDataService;
	@Autowired
	private ShSensorService shSensorService;
	@Autowired
	private ShMemberService shMemberService;
	private DataTranser dataTranser=null;
	@RequestMapping(value="/dataQuery",method=RequestMethod.POST)
    public String dataQuery(HttpServletRequest request,Model model,HttpSession session) throws IOException
	{   
		System.err.println("112");
		String startTime=request.getParameter("startTime");
		System.out.println(startTime);
		String endTime=request.getParameter("endTime");
		int type=Integer.parseInt(request.getParameter("areaData").toString());
		String dateType=request.getParameter("typeData").toString();
		System.out.println(dateType);
		System.out.println(type);
		String user_idString=session.getAttribute("user_id").toString();
		String home_idString=shMemberService.select(user_idString).getHomeId();
		System.out.println(home_idString);
		Sensor[] sensors=shSensorService.sensor(type, home_idString);
		System.out.println(sensors.length);
		int[] sensoridStrings=new int[sensors.length];
		for(int ii=0;ii<sensors.length;ii++)
		{
			sensoridStrings[ii]=sensors[ii].getSensorId();
			System.out.println(sensoridStrings[ii]);
		}
		Data[][] datas=new Data[10][];
		List<DataTranser> list=new ArrayList<DataTranser>();
		for(int ii=0;ii<sensors.length;ii++)
		{
			datas[ii]=shDataService.select(sensoridStrings[ii],dateType,startTime, endTime);
			for(int jj=0;jj<datas[ii].length;jj++)
			{
				dataTranser=new DataTranser();
				dataTranser.setSensorId(datas[ii][jj].getSensorId());
				switch (type) {
				case 1:dataTranser.setAreaNameString("卧室");
				  break;
				case 2:dataTranser.setAreaNameString("客厅");
				break;
				case 3:dataTranser.setAreaNameString("厨房");
				break;
				case 0:dataTranser.setAreaNameString("全部");

				default:
					break;
				}
				if(dateType.equals(new String("1")))
				  dataTranser.setSensorTypeString("温度");
				if(dateType.equals(new String("2")))
				  dataTranser.setSensorTypeString("湿度");
				if(dateType.equals(new String("3")))
					dataTranser.setSensorTypeString("光照");
				if(dateType.equals(new String("4")))
					dataTranser.setSensorTypeString("烟雾浓度");
				dataTranser.setData(datas[ii][jj].getData());
				dataTranser.setCollecttime(datas[ii][jj].getCollectTime());
				list.add(dataTranser);
				System.out.println("qeqw"+datas[ii][jj].getData());
			}
		}
		model.addAttribute("dataQueryList", list);
		return "jsp/dataQueryList";
	}
}
