package sh.ssm.dao;

import sh.ssm.po.SensorManage;

public interface SensorManageMapper {
    int insert(SensorManage record);

    int insertSelective(SensorManage record);
}