package sh.ssm.dao;

import sh.ssm.po.Sensor;

public interface SensorMapper {
    int deleteByPrimaryKey(Integer roomId);

    int insert(Sensor record);

    int insertSelective(Sensor record);

    Sensor[] selectByPrimaryKey(Integer roomId);

    int updateByPrimaryKeySelective(Sensor record);

    int updateByPrimaryKey(Sensor record);
}