package sh.ssm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sh.ssm.dao.RoomMapper;
import sh.ssm.po.Room;

@Service
public class ShRoomService {
@Autowired
private RoomMapper roomMapper;
public void insert(Room record)
{
	roomMapper.insert(record);}
/*public void delete(Integer home_id)
{
	roomMapper.deleteByPrimaryKey(home_id);}*/ //暂时不做房间删除操作等有需求再完成
public void update(Room record)
{
	roomMapper.updateByPrimaryKey(record);}
public Room[] select(Integer home_id)
{
	Room[] room=roomMapper.selectByPrimaryKey(home_id);
	return room;}
}
