package sh.ssm.dao;

import sh.ssm.po.RoomSensor;

public interface RoomSensorMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(RoomSensor record);

    int insertSelective(RoomSensor record);

    RoomSensor selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(RoomSensor record);

    int updateByPrimaryKey(RoomSensor record);
}