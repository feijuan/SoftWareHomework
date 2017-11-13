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
public void deleteBySensorId(Integer sensor_id)//��ɾ�����������ʱ������һ����ʧ
{
	dataMapper.deleteBySensorID(sensor_id);}
public Data[] select(Integer sensor_id,String type)//���ݴ�����id���������Ͳ���������ݲ���data������ʽ����
{
	Data[] data=dataMapper.selectByPrimaryKey(sensor_id,type);
	return data;}
public void update(Data record)//�������ݰ��ո���ʵ���еĴ�����id
{
	dataMapper.updateByPrimaryKey(record);}
}
