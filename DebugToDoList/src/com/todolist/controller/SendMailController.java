package com.todolist.controller;

import java.util.Calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.todolist.model.MailDetail;
import com.todolist.service.MailDetailService;
import com.todolist.service.MailService;

@Controller
public class SendMailController {

	@Autowired
	MailDetailService mailDetailService;
	
	@Autowired
	MailService mailService;
	
	@Autowired
	SimpleMailMessage emailTemplate;
	
	@RequestMapping(value="sendMessage",method=RequestMethod.GET)
	public ModelAndView sendMessageView(){
		ModelAndView model = new ModelAndView();
		model.addObject("mail", new MailDetail());
		
		model.setViewName("mailPage");
		return model;
	}
	
	@RequestMapping(value = "sendMail",method=RequestMethod.POST)
	public ModelAndView sendMail(@ModelAttribute("mail")MailDetail mailDetail){
		mailDetailService.saveMailDetail(mailDetail);
		mailService.setEmailTemplate(prepareMail(mailDetail));
		mailService.sendMail();
		ModelAndView model = new ModelAndView();
		model.setViewName("redirect:/index.html");
		return model;
	}
	
	public SimpleMailMessage prepareMail(MailDetail mailDetail){
		emailTemplate.setSentDate(Calendar.getInstance().getTime());
		emailTemplate.setText(mailDetail.getMailMessage());
		emailTemplate.setSubject(mailDetail.getMailSubject());
		emailTemplate.setTo(mailDetail.getMailTo());
		
		
		return emailTemplate;
	}
	
}
