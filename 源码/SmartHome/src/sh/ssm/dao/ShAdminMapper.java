package sh.ssm.dao;

import sh.ssm.po.ShAdmin;

public interface ShAdminMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ShAdmin record);

    int insertSelective(ShAdmin record);

    ShAdmin selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ShAdmin record);

    int updateByPrimaryKey(ShAdmin record);
}