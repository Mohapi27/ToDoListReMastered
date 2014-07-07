package com.todolist.controller;

import org.glassfish.api.admin.RestEndpoint;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.todolist.model.Meeting;
import com.todolist.service.MeetingService;

@Controller
public class GroupController {

	@Autowired
	MeetingService meetingService;
	
	@RequestMapping(value="showMeetings",method=RequestMethod.GET)
	public ModelAndView viewMeetings(){
		ModelAndView model = new ModelAndView();
		model.addObject("meetings", meetingService.listMeeting());
		model.setViewName("viewMeetings");
		return model;
	}
	
	@RequestMapping(value="saveMeeting",method=RequestMethod.POST)
    public ModelAndView saveMeeting(@ModelAttribute("meeting")Meeting meeting){
		ModelAndView model = new ModelAndView();
		meetingService.saveMeeting(meeting);
		model.setViewName("redirect:/showMeetings.html");
		return model;
	}
	
	@RequestMapping(value="addNewMeeting",method=RequestMethod.GET)
	public ModelAndView addMeeting(){
		ModelAndView model = new ModelAndView();
		model.addObject("meeting", new Meeting());
		model.setViewName("addMeeting");
		return model;
	}
	
	@RequestMapping(value="addMemberToGroupView",method=RequestMethod.GET)
	public ModelAndView addNewMemberView(){
		ModelAndView model = new ModelAndView();
		
		
		return null;
	}
	
	
	
}
