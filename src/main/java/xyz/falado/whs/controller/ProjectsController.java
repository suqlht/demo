package xyz.falado.whs.controller;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


/**
 * 
 * 开发公司：itboy.net<br/>
 * 版权：itboy.net<br/>
 * <p>
 * 
 * 用户登录相关，不需要做登录限制
 * 
 * <p>
 * 
 * 区分　责任人　日期　　　　说明<br/>
 * 创建　周柏成　2016年5月3日 　<br/>
 * <p>
 * *******
 * <p>
 * @author zhou-baicheng
 * @email  i@itboy.net
 * @version 1.0,2016年5月3日 <br/>
 * 
 */
@Controller
@Scope(value="prototype")
@RequestMapping("projects")
public class ProjectsController  {


	/**
	 * 心跳保持会话
	 * @return
	 */
	@RequestMapping(value="check",method =RequestMethod.GET)
	@ResponseBody
	public String heartbeat(){
		return "success";
	}


	/*
	whs
	 */
	@RequestMapping(value="whs/{page}",method=RequestMethod.GET)
	public ModelAndView demo(@PathVariable(value = "page") String page){

		return new ModelAndView("/whs/"+page);
	}



	/**
	 * 总经办项目主页
	 * @return
	 */
	@RequestMapping(value="list",method=RequestMethod.GET)
	public ModelAndView managerProjects(){

		return new ModelAndView("whs/projects_list");
	}
	/**
	 * 总经办新建项目
	 * @return
	 */
	@RequestMapping(value="new",method=RequestMethod.GET)
	public ModelAndView newProjects(){

		return new ModelAndView("whs/new_project");
	}
	/**
	 * 模式窗口添加设备信息
	 * @return
	 */
	@RequestMapping(value="add_equipment",method=RequestMethod.GET)
	public ModelAndView addEquipment(){

		return new ModelAndView("whs/modal_newequipment");
	}

	/**
	 * 项目任务分配
	 * @return
	 */
	@RequestMapping(value="assignlist",method=RequestMethod.GET)
	public ModelAndView assignProjects(){

		return new ModelAndView("whs/projects_assign");
	}

	/**
	 * 项目任务分配
	 * @return
	 */
	@RequestMapping(value="assigngroups",method=RequestMethod.GET)
	public ModelAndView assignGroup(){

		return new ModelAndView("whs/assign_groups");
	}

	/**
	 * 项目任务分配
	 * @return
	 */
	@RequestMapping(value="project_assign",method=RequestMethod.GET)
	public ModelAndView assignProject(){

		return new ModelAndView("whs/project_assign");
	}


	/**
	 * 项目任务分配
	 * @return
	 */
	@RequestMapping(value="input_workhours",method=RequestMethod.GET)
	public ModelAndView inputWorkhours(){

		return new ModelAndView("whs/input_workhours");
	}


	/**
	 * 项目任务分配
	 * @return
	 */
	@RequestMapping(value="project_report{n}",method=RequestMethod.GET)
	public ModelAndView report1(@PathVariable(value = "n") String n){

		return new ModelAndView("whs/Report"+n);
	}


	/**
	 * 项目任务分配
	 * @return
	 */
	@RequestMapping(value="check_workhours{n}",method=RequestMethod.GET)
	public ModelAndView check_workhours(@PathVariable(value = "n") String n){

		return new ModelAndView("whs/check_workhours");
	}

}
