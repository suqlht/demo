package xyz.falado.whs.controller;

import com.github.pagehelper.PageInfo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import xyz.falado.whs.model.WHSDevice;
import xyz.falado.whs.model.WHSDeviceExample;
import xyz.falado.whs.service.WHSDeviceService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;


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
 * @version 1.0,2016年5月3日 <br/>
 * 
 */
@Controller
@Scope(value="prototype")
@RequestMapping("devices")
public class DevicesController {
	private final static Logger logger = LoggerFactory.getLogger(DevicesController.class);

	@Autowired
	private WHSDeviceService deviceService;

	@RequestMapping(value="/list")
	public String list(HttpServletRequest request, Model model,Integer pagelength,Integer pagecurrent){
		PageInfo<WHSDevice> devices;
		logger.info(request.getParameter("search_keywords"));

		if(pagelength==null){
			pagelength = 10;

		}
		if(pagecurrent==null){
			pagecurrent = 1;

		}
		if(StringUtils.isEmpty(request.getParameter("search_keywords"))) {
			devices = deviceService.selectByPage(new WHSDeviceExample(), pagelength, pagecurrent);

		}else{
			devices = deviceService.selectByKeyWord(request.getParameter("search_keywords"), pagelength, pagecurrent);

		}
		model.addAttribute("devices",devices);
		model.addAttribute("search_keywords",request.getParameter("search_keywords"));
		return "devices/devices_list";
	}

	@RequestMapping(value="/page")
	@ResponseBody
	public PageInfo<WHSDevice> page(Model model,int start,int length){
		PageInfo<WHSDevice> devices = deviceService.selectByPage(new WHSDeviceExample(),length,start);
		model.addAttribute("devices",devices);
		return devices;
	}

	@RequestMapping(value="/new")
	public String newdevice(Model model){
		return "devices/devices_new";
	}

	@RequestMapping(value="/modal_new")
	public String modalnewdevice(Model model){
		return "devices/modal_new_device";
	}

	@RequestMapping(value="/create",method=RequestMethod.POST)
	public String createdevice(@Validated WHSDevice device, Model model){
		String deviceCode = device.getModel()+"-"+device.getSpec();
		if(!StringUtils.isEmpty(device.getParam())){
			deviceCode = deviceCode + "-" +  device.getParam();
		}
		device.setDeviceCode(deviceCode);
		deviceService.createNew(device);
		return "redirect:list";
	}


	@RequestMapping(value="/delete/{id}")
	public String deleteDevice(Model model,@PathVariable(value = "id") Integer id){
		deviceService.deleteByID(id);
		return "redirect:/devices/list";
	}


	@RequestMapping(value="/edit/{id}",method=RequestMethod.GET)
	public String editDevice(Model model,@PathVariable(value = "id") Integer id){
		WHSDevice device = deviceService.findByID(id);
		model.addAttribute("device",device);
		return "/devices/modal_edit_device";
	}


	@RequestMapping(value="/edit/{id}",method=RequestMethod.POST)
	public String updateDevice(Model model, WHSDevice device){
		deviceService.updateSingle(device);
		model.addAttribute("device",device);
		return "redirect:/devices/devices_list";
	}

}
