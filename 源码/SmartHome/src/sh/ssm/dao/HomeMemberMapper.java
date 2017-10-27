package sh.ssm.dao;

import sh.ssm.po.HomeMember;

public interface HomeMemberMapper {
    int deleteByPrimaryKey(String idcardNum);

    int insert(HomeMember record);

    int insertSelective(HomeMember record);

    HomeMember selectByPrimaryKey(String idcardNum);

    int updateByPrimaryKeySelective(HomeMember record);

    int updateByPrimaryKey(HomeMember record);
}