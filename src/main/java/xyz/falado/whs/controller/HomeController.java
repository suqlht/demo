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
import xyz.falado.whs.model.XUser;
import xyz.falado.whs.service.XUserService;
import xyz.falado.whs.utils.OperationResult;

import javax.servlet.http.HttpSession;
import java.util.Date;

@Controller
public class HomeController {
    @Autowired
    private XUserService userService;

    private final static Logger logger = LoggerFactory.getLogger(HomeController.class);

    DefaultPasswordService defaultPasswordService = new DefaultPasswordService();
    @RequestMapping("/index")
    public String index(Model model) {
        XUser user = userService.findXUserByID(1);
        model.addAttribute("greeting", "hi");
        model.addAttribute("user", user);

        return "index.ftl";
    }

    @RequestMapping("/home")
    public ModelAndView home(Model model, HttpSession session) {
        model.addAttribute("greeting", "hello.");
        if (session.getAttribute("date") == null) {
            session.setAttribute("date", new Date());
        }

        model.addAttribute("date", session.getAttribute("date"));
        ModelAndView mav = new ModelAndView("home.ftl");

        return mav;
    }


    @RequestMapping(value = "/saveUser", method = RequestMethod.POST)
    @ResponseBody
    public XUser saveUser(Model model, @RequestBody XUser user) {
        userService.addXUser(user);
        return user;
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(String username, String password, boolean remember_me, Model model) {
        logger.info("username:{}", username);
        org.apache.shiro.subject.Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken(username, password);
        token.setRememberMe(remember_me);
        try {
            subject.login(token);
        } catch (UnknownAccountException e) {
            e.printStackTrace();
            model.addAttribute("username", username);
            model.addAttribute("errors", "用户名或密码错误");

            return "login.ftl";
        } catch (IncorrectCredentialsException e) {
            e.printStackTrace();
            model.addAttribute("username", username);
            model.addAttribute("errors", "用户名或密码错误");
            return "login.ftl";
        } catch(Exception e){
            model.addAttribute("username", username);
            model.addAttribute("errors", "系统错误");
            return "login.ftl";
        }
        return "redirect:home.ftl";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginGet() {
        return "login.ftl";
    }

    @RequestMapping(value="/user/register",method=RequestMethod.POST)
    public String register(@Validated XUser user, Model model){
        userService.register(user);
        return "redirect:/login";
    }
    @RequestMapping(value="/user/register",method=RequestMethod.GET)
    public String register(Model model){
        return "user/reg";
    }

    @RequestMapping(value="/myName",method=RequestMethod.GET)
    @ResponseBody
    public OperationResult getMyName(){
        org.apache.shiro.subject.Subject subject = SecurityUtils.getSubject();
        OperationResult op = new OperationResult();
        op.setCode("0000");
        op.setMessage(((XUser) subject.getPrincipal()).getNickname());
        return op;
    }

}
