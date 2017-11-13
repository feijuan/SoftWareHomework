package sh.ssm.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import sh.ssm.po.Member;
import sh.ssm.service.ShMemberService;

@Controller
public class InforManageController
{@Autowired
	private ShMemberService shMemberService;
    String user_id=null;
	@RequestMapping("/userInforShow")
	public String userInforShow(HttpServletRequest request,HttpSession session,Model model)
	{
		System.out.println("信息显示测试");
		user_id=session.getAttribute("user_id").toString();
		Member member=shMemberService.select(user_id);
		model.addAttribute("user_info", member);
		return "jsp/userInforShow";
	}
	@RequestMapping("/userInforChange")
	public String userInforChange(HttpServletRequest request,HttpSession session)
	{
		System.out.println("密码修改测试");
		user_id=session.getAttribute("user_id").toString();
		Member member=shMemberService.select(user_id);
		String new_password=request.getParameter("newpassword");
		System.out.println(new_password);
		member.setPassword(new_password);
		shMemberService.update(member);
		return "redirect:/userInforShow.action";
	}
	@RequestMapping("/memberInforShow")
	public String memberInforShow(HttpServletRequest request,HttpSession session,Model model)
	{
		System.out.println("成员显示测试");
		user_id=session.getAttribute("user_id").toString();
		Member member=shMemberService.select(user_id);
		String home_id=member.getHomeId();
		Member[] members=shMemberService.selectByHomeId(home_id);
		model.addAttribute("members_info", members);
		return "jsp/memberInforShow";
	}
	@RequestMapping("/memberInforCheck")
	public String memberInforCheck(HttpServletRequest request,HttpSession session,Model model)
	{
		System.out.println("成员验证测试");
		List<Member> list=new ArrayList<Member>();
		user_id=session.getAttribute("user_id").toString();
		Member member=shMemberService.select(user_id);
		String home_id=member.getHomeId();
		Member[] uncheckedMembers=shMemberService.selectUncheckedMembers(home_id);
		for(int ii=0;ii<uncheckedMembers.length;ii++)
		{
			list.add(uncheckedMembers[ii]);
		}
		model.addAttribute("ValidateMemeberList", list);
		return "jsp/memberInforCheck";
	}
	@RequestMapping("/memberInforConfirm")
	public String memberInforConfirm(HttpServletRequest request,HttpSession session,Model model)
	{    Member member=null;
		String id_card=request.getParameter("idcard");
		member=shMemberService.select(id_card);
		member.setOwnerFlag(2);
		shMemberService.update(member);
		model.addAttribute("return_message", "confirm success");
		return "jsp/memberInforCheck";
	}
	@RequestMapping("/passwordCheck")
	public void passwordCheck(HttpServletRequest request,HttpServletResponse response,HttpSession session,Model model) throws IOException
	{
		System.out.println("旧密码测试");
		System.out.println(request.getParameter("idcard"));
		if(request.getParameter("idcard").toString().equals(shMemberService.select(session.getAttribute("user_id").toString()).getPassword()))
		{
			response.getWriter().print(true);
		}
		response.getWriter().print(false);
	}
}
