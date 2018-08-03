package xyz.falado.whs.controller;

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
import xyz.falado.whs.model.WHSEmployee;
import xyz.falado.whs.model.WHSEmployeeExample;
import xyz.falado.whs.model.WHSProjectPlan;
import xyz.falado.whs.service.WHSProjectPlanService;
import xyz.falado.whs.service.XUserService;
import xyz.falado.whs.utils.OperationResult;

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

}
