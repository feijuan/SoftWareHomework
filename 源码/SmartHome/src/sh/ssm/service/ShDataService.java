package sh.ssm.service;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sh.ssm.dao.DataMapper;
import sh.ssm.po.Data;

@Service
public class ShDataService {
@Autowired
private DataMapper dataMapper;
public void insert(Data record)
{
	dataMapper.insert(record);}
public void deleteByDataId(Integer data_id)
{
	dataMapper.deleteByPrimaryKey(data_id);
}
public void deleteBySensorId(Integer sensor_id)//��ɾ�����������ʱ�����һ����ʧ
{
	dataMapper.deleteBySensorID(sensor_id);}
public Data[] select(Integer sensor_id,String type,String startTime,String endTime)//��ݴ�����id��������Ͳ��������ݲ���data������ʽ����
{
	Map<String,Object> map=new HashMap<String, Object>();
	map.put("sensorId", sensor_id);
	map.put("type", type);
	map.put("startTime", startTime);
	map.put("endTime", endTime);
	System.out.println(startTime);
	System.out.println(endTime);
	Data[] data=dataMapper.selectByPrimaryKey(map);
	return data;}
public void update(Data record)//������ݰ��ո�ʵ���еĴ�����id
{
	dataMapper.updateByPrimaryKey(record);}
}
