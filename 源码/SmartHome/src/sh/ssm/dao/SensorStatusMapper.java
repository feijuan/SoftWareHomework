package sh.ssm.dao;

import java.util.List;

import sh.ssm.po.SensorStatus;

public interface SensorStatusMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SensorStatus record);

    int insertSelective(SensorStatus record);

    SensorStatus selectByPrimaryKey(Integer id);
    
    List<SensorStatus> selectByidcard(String id_card);

    int updateByPrimaryKeySelective(SensorStatus record);

    int updateByPrimaryKey(SensorStatus record);
}