package sh.ssm.dao;

import sh.ssm.po.Room;

public interface RoomMapper {
    int deleteByPrimaryKey(Integer roomId);

    int insert(Room record);

    int insertSelective(Room record);

    Room[] selectByPrimaryKey(Integer home_id);

    int updateByPrimaryKeySelective(Room record);

    int updateByPrimaryKey(Room record);
}