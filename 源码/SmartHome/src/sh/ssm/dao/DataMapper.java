package sh.ssm.dao;

import java.sql.Date;
import java.util.Map;

import sh.ssm.po.Data;

public interface DataMapper {
    int deleteByPrimaryKey(Integer dataId);
    
    int deleteBySensorID(Integer sensorId);

    int insert(Data record);

    int insertSelective(Data record);

    Data[] selectByPrimaryKey(Map map);

    int updateByPrimaryKeySelective(Data record);

    int updateByPrimaryKey(Data record);
}