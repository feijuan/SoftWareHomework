package sh.ssm.Dao;

import sh.ssm.po.User;



public interface UserDao
{
   //编写映射文件遵循一定开发规范，Mybatis可以自动生成mapper接口实现类代理对象
     //方法名和statement中的id名一致
	public User findUserById(int id)throws Exception;


}
