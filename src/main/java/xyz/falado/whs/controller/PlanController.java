package xyz.falado.whs.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.pagehelper.PageInfo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import xyz.falado.whs.model.*;
import xyz.falado.whs.service.WHSProjectPlanService;
import xyz.falado.whs.service.XUserService;
import xyz.falado.whs.utils.OperationResult;

import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("plan")
public class PlanController {
    @Autowired
    private WHSProjectPlanService planService;

    private final static Logger logger = LoggerFactory.getLogger(PlanController.class);
    @RequestMapping(value = "/modify", method = RequestMethod.POST)
    @ResponseBody
    public OperationResult list(Model model, @RequestBody WHSProjectPlan plan) {
        OperationResult result = new OperationResult();

        try{

            if(StringUtils.isEmpty(plan.getId())){
                planService.createNew(plan);
            }else{
                planService.createUpdate(plan);
            }

        }catch(Exception e){
            result.setCode("0001");
            result.setMessage(e.getMessage());
        }

        return result;
    }



    @RequestMapping(value = "mechanical_plan", method = RequestMethod.GET)
    public String mechanical_plan(Model model, Integer pagelength, Integer pagecurrent, String search_keyword) {
        PageInfo<HashMap> plans;

        //关键词搜索
        plans = planService.findMechanicalPlans(search_keyword, pagelength, pagecurrent);
        logger.info("list:{}",plans.getList().size());

        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.setDateFormat(new SimpleDateFormat("yyyy-MM-dd"));

        String json = "";
        try {
            json = objectMapper.writeValueAsString(plans.getList()); //obj为要传的对象
        } catch (Exception e) {
            json = "[]";
            logger.error(e.getMessage());
            model.addAttribute("errors", "系统错误");

        }
        model.addAttribute("plans", json);

        model.addAttribute("total", plans.getTotal());
        model.addAttribute("pages",plans.getPages());
        model.addAttribute("pageNum",plans.getPageNum());
        model.addAttribute("search_keyword", search_keyword);

        return "whs/mechanical_plan";
    }
    @RequestMapping(value = "electric_plan", method = RequestMethod.GET)
    public String electric_plan(Model model, Integer pagelength, Integer pagecurrent, String search_keyword) {
        if(pagelength==null){
            pagelength = 10;
        }
        if(pagecurrent==null){
            pagecurrent = 1;
        }
        List<WHSProjectPlanResponse> plans;

        Long total = planService.queryPlanCount(search_keyword);

        logger.info("total:{}",total);

        int pages = (int)Math.ceil(total/(float)pagelength);
        int pagenum = pages >  pagecurrent ? pagecurrent : pages;
        plans = planService.findElectricalPlans(search_keyword, pagelength, pagecurrent);
        logger.info("list:{}",plans.size());

        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.setDateFormat(new SimpleDateFormat("yyyy-MM-dd"));

        String json = "";
        try {
            json = objectMapper.writeValueAsString(plans); //obj为要传的对象
        } catch (Exception e) {
            json = "[]";
            logger.error(e.getMessage());
            model.addAttribute("errors", "系统错误");

        }
        model.addAttribute("plans", json);
        model.addAttribute("total", total);
        model.addAttribute("pages",pages);
        model.addAttribute("pageNum",pagenum);
        model.addAttribute("search_keyword", search_keyword);


        return "whs/electric_plan";
    }

    @RequestMapping(value = "purchase_plan", method = RequestMethod.GET)
    public String purchase_plan(Model model, Integer pagelength, Integer pagecurrent, String search_keyword) {

        if(pagelength==null){
            pagelength = 10;
        }
        if(pagecurrent==null){
            pagecurrent = 1;
        }
        List<WHSProjectPlanResponse> plans;

        Long total = planService.queryPlanCount(search_keyword);

        logger.info("total:{}",total);

        int pages = (int)Math.ceil(total/(float)pagelength);
        int pagenum = pages >  pagecurrent ? pagecurrent : pages;
        plans = planService.findPurchasePlans(search_keyword, pagelength, pagecurrent);
        logger.info("list:{}",plans.size());

        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.setDateFormat(new SimpleDateFormat("yyyy-MM-dd"));

        String json = "";
        try {
            json = objectMapper.writeValueAsString(plans); //obj为要传的对象
        } catch (Exception e) {
            json = "[]";
            logger.error(e.getMessage());
            model.addAttribute("errors", "系统错误");

        }
        model.addAttribute("plans", json);
        model.addAttribute("total", total);
        model.addAttribute("pages",pages);
        model.addAttribute("pageNum",pagenum);
        model.addAttribute("search_keyword", search_keyword);

        return "whs/purchase_plan";
    }
    @RequestMapping(value = "plan/assets", method = RequestMethod.GET)
    public String purchase_assets(Long id, Model model, Integer pagelength, Integer pagecurrent) {

         WHSProjectPlanResponse plan = planService.findPlanResponse(id);
        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.setDateFormat(new SimpleDateFormat("yyyy-MM-dd"));

        String json = "";
        try {
            json = objectMapper.writeValueAsString(plan.getPlanAssets()); //obj为要传的对象
        } catch (Exception e) {
            json = "[]";
            logger.error(e.getMessage());
            model.addAttribute("errors", "系统错误");

        }

        model.addAttribute("planAssets", json);
        model.addAttribute("plan", plan);

        return "whs/purchase_assets";
    }

    @RequestMapping(value = "assets/modify", method = RequestMethod.POST)
    @ResponseBody
    public OperationResult modifyPlanAssets( @RequestBody WHSProjectPlanResponse plan, Model model) {
        OperationResult result = new OperationResult();

        logger.info("plan:{}",plan);
        try {
            planService.updatePurchasePlan(plan);
        }
        catch(Exception e){
            result.setCode("0001");
            result.setMessage(e.getMessage());
        }
        return result;
    }


    @RequestMapping(value = "manufacture_plan", method = RequestMethod.GET)
    public String manufacture_plan(Model model, Integer pagelength, Integer pagecurrent, String search_keyword) {

        if(pagelength==null){
            pagelength = 10;
        }
        if(pagecurrent==null){
            pagecurrent = 1;
        }
        List<WHSProjectPlanResponse> plans;

        Long total = planService.queryPlanCount(search_keyword);

        logger.info("total:{}",total);

        int pages = (int)Math.ceil(total/(float)pagelength);
        int pagenum = pages >  pagecurrent ? pagecurrent : pages;
        plans = planService.findManufacturePlans(search_keyword, pagelength, pagecurrent);
        logger.info("list:{}",plans.size());

        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.setDateFormat(new SimpleDateFormat("yyyy-MM-dd"));

        String json = "";
        try {
            json = objectMapper.writeValueAsString(plans); //obj为要传的对象
        } catch (Exception e) {
            json = "[]";
            logger.error(e.getMessage());
            model.addAttribute("errors", "系统错误");

        }
        model.addAttribute("plans", json);
        model.addAttribute("total", total);
        model.addAttribute("pages",pages);
        model.addAttribute("pageNum",pagenum);
        model.addAttribute("search_keyword", search_keyword);

        return "whs/manufacture_plan";
    }

}
