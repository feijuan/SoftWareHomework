package sh.ssm.service;

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
public void deleteBySensorId(Integer sensor_id)//当删掉这个传感器时候数据一并消失
{
	dataMapper.deleteBySensorID(sensor_id);}
public Data[] select(Integer sensor_id,String type)//根据传感器id和数据类型查找相关数据并以data集合形式返回
{
	Data[] data=dataMapper.selectByPrimaryKey(sensor_id,type);
	return data;}
public void update(Data record)//更新数据按照给定实体中的传感器id
{
	dataMapper.updateByPrimaryKey(record);}
}
