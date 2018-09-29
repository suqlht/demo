package xyz.falado.whs.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.pagehelper.PageInfo;
import org.apache.shiro.SecurityUtils;
import org.joda.time.DateTime;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.apache.commons.lang3.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import xyz.falado.whs.model.*;
import xyz.falado.whs.service.WHSProjectService;
import xyz.falado.whs.utils.OperationResult;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.*;


/**
 * 开发公司：itboy.net<br/>
 * 版权：itboy.net<br/>
 * <p>
 * <p>
 * 用户登录相关，不需要做登录限制
 * <p>
 * <p>
 * <p>
 * 区分　责任人　日期　　　　说明<br/>
 * 创建　周柏成　2016年5月3日 　<br/>
 * <p>
 * *******
 * <p>
 *
 * @author zhou-baicheng
 * @version 1.0, 2016年5月3日 <br/>
 */
@Controller
@Scope(value = "prototype")
@RequestMapping("projects")
public class ProjectsController {

    @Autowired
    private WHSProjectService projectService;


    private final static Logger logger = LoggerFactory.getLogger(ProjectsController.class);


    /**
     * 心跳保持会话
     */
    @RequestMapping(value = "check", method = RequestMethod.GET)
    @ResponseBody
    public String heartbeat() {
        return "success";
    }


    /*
    whs
     */
    @RequestMapping(value = "whs/{page}", method = RequestMethod.GET)
    public ModelAndView demo(@PathVariable(value = "page") String page) {

        return new ModelAndView("/whs/" + page);
    }


    /**
     * 总经办项目主页
     */
    @RequestMapping(value = "list", method = RequestMethod.GET)
    public String managerProjects(Model model, String search_keyword, Integer pagelength, Integer pagecurrent) {
        PageInfo<WHSProject> projects;
        if (pagelength == null) {
            pagelength = 10;

        }
        if (pagecurrent == null) {
            pagecurrent = 1;

        }
        if (StringUtils.isEmpty(search_keyword)) {
            projects = projectService.findPageByExample(new WHSProjectExample(), pagelength, pagecurrent);

        } else {
            projects = projectService.findPageByKeyword(search_keyword, pagelength, pagecurrent);

        }
        model.addAttribute("projects", projects);
        model.addAttribute("search_keyword", search_keyword);

        return "whs/projects_list";
    }

    /**
     * 总经办新建项目
     */
    @RequestMapping(value = "new", method = RequestMethod.GET)
    public ModelAndView newProjects() {

        return new ModelAndView("whs/new_project");
    }

    /**
     * 模式窗口添加设备信息
     */
    @RequestMapping(value = "add_equipment", method = RequestMethod.GET)
    public ModelAndView addEquipment() {

        return new ModelAndView("whs/modal_newequipment");
    }

    /**
     * 项目任务分配
     */
    @RequestMapping(value = "assignlist", method = RequestMethod.GET)
    public ModelAndView assignProjects() {

        return new ModelAndView("whs/projects_assign");
    }

    /**
     * 项目任务分配
     */
    @RequestMapping(value = "assigngroups", method = RequestMethod.GET)
    public ModelAndView assignGroup() {

        return new ModelAndView("whs/assign_groups");
    }

    /**
     * 项目任务分配
     */
    @RequestMapping(value = "project_assign", method = RequestMethod.GET)
    public ModelAndView assignProject() {

        return new ModelAndView("whs/project_assign");
    }


    /**
     * 项目任务分配
     */
    @RequestMapping(value = "input_workhours", method = RequestMethod.GET)
    public ModelAndView inputWorkhours(String d, Model model) {
        SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");

        DateTime dt;
        try {
            dt = new DateTime(sd.parse(d));

        } catch (Exception e) {
            dt = new DateTime();
        }

        int current = dt.getDayOfWeek();

        DateTime monday = dt.minusDays(current - 1);
        DateTime sunday = dt.plusDays(7 - current);
        DateTime tuesday = dt.minusDays(current - 2);
        DateTime wednesday = dt.plusDays(3 - current);
        DateTime thursday = dt.minusDays(current - 4);
        DateTime friday = dt.plusDays(5 - current);
        DateTime saturday = dt.plusDays(6 - current);

        model.addAttribute("previousday", monday.minusDays(1));
        model.addAttribute("currentday", dt.toString("MM-dd"));
        model.addAttribute("nextday", sunday.plusDays(1));
        model.addAttribute("monday", monday.toString("MM-dd"));
        model.addAttribute("sunday", sunday.toString("MM-dd"));
        model.addAttribute("tuesday", tuesday.toString("MM-dd"));
        model.addAttribute("wednesday", wednesday.toString("MM-dd"));
        model.addAttribute("thursday", thursday.toString("MM-dd"));
        model.addAttribute("friday", friday.toString("MM-dd"));
        model.addAttribute("saturday", saturday.toString("MM-dd"));
        return new ModelAndView("whs/input_workhours");
    }


    /**
     * 项目任务分配
     */
    @RequestMapping(value = "project_report{n}", method = RequestMethod.GET)
    public ModelAndView report1(@PathVariable(value = "n") String n) {

        return new ModelAndView("whs/Report" + n);
    }


    /**
     * 项目任务分配
     */
    @RequestMapping(value = "check_workhours{n}", method = RequestMethod.GET)
    public ModelAndView check_workhours(@PathVariable(value = "n") String n) {

        return new ModelAndView("whs/check_workhours");
    }


    @RequestMapping(value = "edit/{n}", method = RequestMethod.GET)
    public String projectDevices(@PathVariable(value = "n") Long n, Model model) {

        WHSProjectSubs projectSubs = projectService.findProjectSubs(n);
        model.addAttribute("project", projectSubs.getProject());
        ObjectMapper objectMapper = new ObjectMapper();
        String json = "";
        try {
            json = objectMapper.writeValueAsString(projectSubs.getSubprojects()); //obj为要传的对象
        } catch (Exception e) {
            json = "[]";
            logger.error(e.getMessage());
            model.addAttribute("errors", "系统错误");

        }
        model.addAttribute("subprojects", json);
        return "whs/project_edit";
    }

    @RequestMapping(value = "create", method = RequestMethod.POST)
    @ResponseBody
    public OperationResult createProject(@RequestBody WHSProjectSubs whsProjectSubs) {
        OperationResult result = new OperationResult();
        org.apache.shiro.subject.Subject subject = SecurityUtils.getSubject();

        whsProjectSubs.getProject().setCreatedBy(((XUser) subject.getPrincipal()).getId()   );
        whsProjectSubs.getProject().setCreatedate(new Date());
        //检查子项目号格式
        for (WHSSubProject sub : whsProjectSubs.getSubprojects()) {
            String subProjectCode = sub.getSubProjectId();
            String projectCode = whsProjectSubs.getProject().getProjectCode();
            if (!subProjectCode.startsWith(projectCode + "-") || !StringUtils.isNumeric(subProjectCode.substring(projectCode.length() + 1))) {
                result.setCode("0001");
                result.setMessage("子项目号格式错误");
                return result;
            }
        }
        projectService.createNew(whsProjectSubs);

        return result;
    }


    @RequestMapping(value = "delete", method = RequestMethod.POST)
    @ResponseBody
    public OperationResult deleteProject(@RequestBody Long[] ids) {
        org.apache.shiro.subject.Subject subject = SecurityUtils.getSubject();
        projectService.deleteInBatch(ids, ((XUser) subject.getPrincipal()).getId());


        return new OperationResult();
    }

    @RequestMapping(value = "start", method = RequestMethod.POST)
    @ResponseBody
    public OperationResult startProject(@RequestBody Long[] ids) {
        org.apache.shiro.subject.Subject subject = SecurityUtils.getSubject();
        projectService.startProject(ids, ((XUser) subject.getPrincipal()).getId());


        return new OperationResult();
    }


    @RequestMapping(value = "detail/{n}", method = RequestMethod.GET)
    public String showProjectDevices(@PathVariable(value = "n") Long n, Model model) {
        ObjectMapper objectMapper = new ObjectMapper();

        WHSProjectSubs projectSubs = projectService.findProjectSubs(n);


        model.addAttribute("project", projectSubs.getProject());

        String jsonSubProjects = "";
        try {
            jsonSubProjects = objectMapper.writeValueAsString(projectSubs.getSubprojects()); //obj为要传的对象
        } catch (Exception e) {
            jsonSubProjects = "[]";
            logger.error(e.getMessage());
            model.addAttribute("errors", "系统错误");

        }
        model.addAttribute("subprojects", jsonSubProjects);
        return "whs/project_detail";
    }

    @RequestMapping(value = "update", method = RequestMethod.POST)
    @ResponseBody
    public WHSProjectSubs updateProjectSub(@RequestBody WHSProjectSubs whsProjectSubs) {
        org.apache.shiro.subject.Subject subject = SecurityUtils.getSubject();

        projectService.createUpdate(whsProjectSubs);

        return whsProjectSubs;
    }

    @RequestMapping(value = "{n}", method = RequestMethod.POST)
    @ResponseBody
    public WHSProject updateProject(@RequestBody WHSProject whsProject,@PathVariable(value = "n") Long n) {
        org.apache.shiro.subject.Subject subject = SecurityUtils.getSubject();

        whsProject.setId(n);
        projectService.Update(whsProject);

        return whsProject;
    }
    @RequestMapping(value = "subproject/{n}", method = RequestMethod.POST)
    @ResponseBody
    public WHSSubProject updateSubProject(@RequestBody WHSSubProject whsSubProject,@PathVariable(value = "n") Long n) {
        org.apache.shiro.subject.Subject subject = SecurityUtils.getSubject();
        whsSubProject.setId(n);
        projectService.updateSubProject(whsSubProject);
        return whsSubProject;
    }
    @RequestMapping(value = "subproject", method = RequestMethod.POST)
    @ResponseBody
    public WHSSubProject addSubProject(@RequestBody WHSSubProject whsSubProject) {
        org.apache.shiro.subject.Subject subject = SecurityUtils.getSubject();
        projectService.createSubProject(whsSubProject);
        return whsSubProject;
    }

    @RequestMapping(value = "{n}/subproject/remove", method = RequestMethod.POST)
    @ResponseBody
    public OperationResult deleteSubProject(@RequestBody Long[] subprojectids,@PathVariable(value = "n") Long n) {
        org.apache.shiro.subject.Subject subject = SecurityUtils.getSubject();
        OperationResult result = new OperationResult();
        try {
             int i = projectService.deleteSubProject(Arrays.asList(subprojectids), n);
             result.setMessage("已删除" + i + "行");
        }catch (Exception e){
            result.setCode("0001");
            result.setMessage(e.getMessage());
        }

        return result;
    }


}
