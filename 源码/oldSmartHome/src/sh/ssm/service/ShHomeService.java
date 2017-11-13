package sh.ssm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sh.ssm.dao.HomeMapper;
import sh.ssm.po.Home;

@Service
public class ShHomeService {
  @Autowired
  private HomeMapper homeMapper;
  public void insert(Home record)
  {
	  homeMapper.insert(record);
  }
  public void delete(Integer home_id)
  {
	  homeMapper.deleteByPrimaryKey(home_id);
  }
  public Home select(Integer home_id)
  {
	  Home home=homeMapper.selectByPrimaryKey(home_id);
	  return home;
  }
  public void update(Home record)//���ݴ�����record�м�ͥid���¸ü�ͥ��¼
  {
	  homeMapper.updateByPrimaryKey(record);
  }
}
