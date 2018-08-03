package xyz.falado.whs.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authc.credential.DefaultPasswordService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import xyz.falado.whs.model.WHSEmployee;
import xyz.falado.whs.model.WHSEmployeeExample;
import xyz.falado.whs.model.XUser;
import xyz.falado.whs.service.XUserService;
import xyz.falado.whs.utils.OperationResult;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("employee")
public class UserController {
    @Autowired
    private XUserService userService;


    private final static Logger logger = LoggerFactory.getLogger(UserController.class);
    @RequestMapping("/list")
    @ResponseBody
    public List<WHSEmployee> list(Model model) {
        WHSEmployeeExample example = new WHSEmployeeExample();
        List<WHSEmployee> employees = userService.findEmployeeByExample(example);
        return employees;
    }

}
