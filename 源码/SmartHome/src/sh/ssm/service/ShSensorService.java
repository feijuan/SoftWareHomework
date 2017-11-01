package sh.ssm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sh.ssm.dao.SensorMapper;
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
}
