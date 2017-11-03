package sh.ssm.dao;

import java.util.Map;

import sh.ssm.po.Sensor;

public interface SensorMapper {
    int deleteByPrimaryKey(Integer roomId);

    int insert(Sensor record);

    int insertSelective(Sensor record);

    Sensor[] selectByPrimaryKey(Integer roomId);
    
    Sensor[] selectByRoomAndHome(Map map);

    int updateByPrimaryKeySelective(Sensor record);

    int updateByPrimaryKey(Sensor record);
}