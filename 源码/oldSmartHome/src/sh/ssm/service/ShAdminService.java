package sh.ssm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sh.ssm.dao.ShAdminMapper;
import sh.ssm.po.ShAdmin;

@Service
public class ShAdminService
{
   @Autowired
   private ShAdminMapper shAdminMapper;
   public void insert(ShAdmin record)
   {
	   shAdminMapper.insert(record);
   }
   public void delete(Integer id)
   {
	   shAdminMapper.deleteByPrimaryKey(id);
   }
   public void update(ShAdmin record)
   {
	   shAdminMapper.updateByPrimaryKey(record);
   }
   public ShAdmin select(Integer id)
   {
	   ShAdmin shAdmin=shAdminMapper.selectByPrimaryKey(id);
	   return shAdmin;
   }
}
