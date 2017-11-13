package sh.ssm.dao;

import sh.ssm.po.Member;

public interface MemberMapper {
    int deleteByPrimaryKey(String idcard);

    int insert(Member record);

    int insertSelective(Member record);

    Member selectByPrimaryKey(String idcard);
    
    Member[] selectByHomeId(String home_id);
    
    int updateByPrimaryKeySelective(Member record);

    int updateByPrimaryKey(Member record);
    
    Member selectOwnerByHomeId(String home_id);
    
    Member[] selectUncheckedMembers(String home_id);
    
    Member selectByPhone(String telephone);
}