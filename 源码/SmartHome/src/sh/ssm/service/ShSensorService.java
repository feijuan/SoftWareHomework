package sh.ssm.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sh.ssm.dao.SensorMapper;
import sh.ssm.dao.SensorStatusMapper;
import sh.ssm.po.Sensor;

@Service
public class ShSensorService {
@Autowired
private SensorMapper sensorMapper;

public void insert(Sensor record)
{
	sensorMapper.insert(record);}
public void delete(Integer room_id)
{
	sensorMapper.deleteByPrimaryKey(room_id);}
public void update(Sensor record)
{
	sensorMapper.updateByPrimaryKey(record);}
public Sensor[] select(Integer roomId)
{
	Sensor [] sensor=sensorMapper.selectByPrimaryKey(roomId);
	return sensor;}
public Sensor[] sensor(Integer roomId,String homeId)
{
	Map<String,Object> map=new HashMap<String, Object>();
	map.put("roomId", roomId);
	map.put("homeId", homeId);
	Sensor[] sensor=sensorMapper.selectByRoomAndHome(map);
	return sensor;}
}
