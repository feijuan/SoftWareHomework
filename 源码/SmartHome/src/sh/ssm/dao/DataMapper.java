package sh.ssm.dao;

import sh.ssm.po.Data;

public interface DataMapper {
    int deleteByPrimaryKey(Integer dataId);
    
    int deleteBySensorID(Integer sensorId);

    int insert(Data record);

    int insertSelective(Data record);

    Data[] selectByPrimaryKey(Integer sensorId,String type);

    int updateByPrimaryKeySelective(Data record);

    int updateByPrimaryKey(Data record);
}