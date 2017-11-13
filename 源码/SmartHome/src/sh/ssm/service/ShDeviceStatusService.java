package sh.ssm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sh.ssm.dao.DeviceStatusMapper;
import sh.ssm.po.DeviceStatus;

@Service
public class ShDeviceStatusService {
      
	 @Autowired
	 private DeviceStatusMapper deviceStatusMapper;
	 public List<DeviceStatus> selectByidcard(String id_card)
	 {
		 return deviceStatusMapper.selectByidcard(id_card);
	 }
}
