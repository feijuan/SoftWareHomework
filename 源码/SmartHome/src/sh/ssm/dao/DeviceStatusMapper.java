package sh.ssm.dao;

import java.util.List;

import sh.ssm.po.DeviceStatus;

public interface DeviceStatusMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(DeviceStatus record);

    int insertSelective(DeviceStatus record);

    DeviceStatus selectByPrimaryKey(Integer id);

    List<DeviceStatus> selectByidcard(String id_card);
    
    int updateByPrimaryKeySelective(DeviceStatus record);

    int updateByPrimaryKey(DeviceStatus record);
}