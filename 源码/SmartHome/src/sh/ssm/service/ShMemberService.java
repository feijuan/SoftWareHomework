package sh.ssm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sh.ssm.dao.MemberMapper;
import sh.ssm.po.Member;

@Service
public class ShMemberService {
	@Autowired
	private MemberMapper memberMapper;
	public void insert(Member record)
	{
		memberMapper.insert(record);
	}
	public void delete(String idcard)
	{
		memberMapper.deleteByPrimaryKey(idcard);
	}
	public void update(Member record)
	{
		memberMapper.updateByPrimaryKey(record);
	}
	public Member select(String idcard)
	{
		Member member=memberMapper.selectByPrimaryKey(idcard);
		return member;
	}
	public Member selectByPhone(String telphone)
	{
		Member member=memberMapper.selectByPhone(telphone);
		return member;
	}
	public Member[] selectByHomeId(String home_id)
	{
		Member[] member=memberMapper.selectByHomeId(home_id);
		return member;
	}
}
