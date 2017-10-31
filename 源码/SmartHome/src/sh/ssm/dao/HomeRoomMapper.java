package sh.ssm.dao;

import sh.ssm.po.HomeRoom;

public interface HomeRoomMapper {
    int deleteByPrimaryKey(Integer roomId);

    int insert(HomeRoom record);

    int insertSelective(HomeRoom record);

    HomeRoom selectByPrimaryKey(Integer roomId);

    int updateByPrimaryKeySelective(HomeRoom record);

    int updateByPrimaryKey(HomeRoom record);
}