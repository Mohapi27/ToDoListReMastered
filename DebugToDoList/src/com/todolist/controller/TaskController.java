package com.todolist.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.todolist.model.Task;
import com.todolist.service.TaskService;

@Controller
public class TaskController {
	
	@Autowired
	TaskService taskService;

	@RequestMapping(value = "addTask", method = RequestMethod.GET)
	public ModelAndView addTask(@ModelAttribute("task") Task task,
			BindingResult result) {

		ModelAndView model = new ModelAndView("saveTask");

		return model;
	}

	@RequestMapping(value = "saveTask", method = RequestMethod.POST)
	public ModelAndView saveTask(@ModelAttribute("task") Task task,
			BindingResult result) {
		
		ModelAndView model = new ModelAndView("redirect:/index.html");

		task.setIsDone(false);
		taskService.saveTask(task);
		
		return model;
	}
	
	@RequestMapping(value = "/taskList", method = RequestMethod.GET)
	public ModelAndView taskList() {

		ModelAndView model = new ModelAndView("displayTasks");

		model.addObject("tasks", taskService.taskList());

		return model;
	}
	
	@RequestMapping(value = "/completedTasks", method = RequestMethod.GET)
	public ModelAndView completedTasks() {

		ModelAndView model = new ModelAndView("completedTasks");

		model.addObject("completedTasks", taskService.completedTasks());

		return model;
	}

}
