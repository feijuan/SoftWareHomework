package sh.ssm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sh.ssm.dao.SensorStatusMapper;
import sh.ssm.po.SensorStatus;

@Service
public class ShSensorStatusService {
     @Autowired
     SensorStatusMapper sensorStatusMapper;
     public List<SensorStatus> selectByidcard(String id_card)
     {
    	 System.out.println("service:"+sensorStatusMapper.selectByidcard(id_card).get(0).getHomeId());
    	 return sensorStatusMapper.selectByidcard(id_card);
     }
}
