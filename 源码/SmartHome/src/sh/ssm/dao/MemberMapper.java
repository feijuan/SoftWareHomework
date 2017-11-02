package sh.ssm.dao;

import sh.ssm.po.Member;

public interface MemberMapper {
    int deleteByPrimaryKey(Integer idcard);

    int insert(Member record);

    int insertSelective(Member record);

    Member selectByPrimaryKey(Integer idcard);
    
    Member[] selectByHomeId(Integer home_id);
    
    int updateByPrimaryKeySelective(Member record);

    int updateByPrimaryKey(Member record);
}