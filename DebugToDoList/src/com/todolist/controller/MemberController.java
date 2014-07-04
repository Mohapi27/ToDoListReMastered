package com.todolist.controller;

import java.sql.SQLException;
import java.util.Calendar;

import org.apache.commons.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.todolist.bean.MemberBean;
import com.todolist.model.Member;
import com.todolist.model.Performance;
import com.todolist.model.UserStatus;
import com.todolist.service.MemberService;
import com.todolist.service.PerformanceService;

@Controller
public class MemberController {

	@Autowired
	MemberService memberService;

	@Autowired
	PerformanceService performanceService;

	@RequestMapping(value = "/viewAddMember", method = RequestMethod.GET)
	public ModelAndView viewAddMember() {
		ModelAndView model = new ModelAndView();
		model.addObject("member", new MemberBean());
		model.setViewName("addMember");

		return model;
	}

	@RequestMapping(value = "/saveNewMember", method = RequestMethod.POST)
	public ModelAndView saveMember(@ModelAttribute("newMember") Member member,
			BindingResult result) {
		ModelAndView model = new ModelAndView();
member.setStatus(UserStatus.ACTIVE);

		memberService.saveMember(member);
		model.setViewName("redirect:/index.html");
		return model;
	}

	@RequestMapping(value = "/showProfile", method = RequestMethod.GET)
	public ModelAndView profile() {

		ModelAndView model = new ModelAndView();

		String loggedUsername = SecurityContextHolder.getContext()
				.getAuthentication().getName();

		Member member = memberService.findMemberByName(loggedUsername);
		Performance performance = performanceService.getPerformance(member.getMemberId());
        model.addObject("date", Calendar.getInstance().getTime());
        if (member != null) {
			model.addObject("memberProfile", member);
		}
		if (performance != null) {
			model.addObject("memberPerformance", performance);
		}
		if(member.getImage() != null)
		{
			String image;
			try {
				image = Base64
						.encodeBase64URLSafeString(member.getImage()
								.getBytes(
										1,
										new Long(member.getImage().length())
												.intValue()));
				System.out.println(image);
				model.addObject("image", image);
			} catch (SQLException  | NullPointerException e) {
				e.printStackTrace();
			}
		}
		model.setViewName("ProfileDisplay");
		return model;
	}

}
