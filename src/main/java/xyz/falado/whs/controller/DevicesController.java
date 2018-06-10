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
import xyz.falado.whs.model.WHSProcess;
import xyz.falado.whs.model.WHSProcessExample;
import xyz.falado.whs.service.WHSDeviceProcessService;
import xyz.falado.whs.service.WHSDeviceService;
import xyz.falado.whs.service.WHSProcessService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


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
	@Autowired
	private WHSProcessService processService;
//	@Autowired
//	private WHSDeviceProcessService deviceProcessService;

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

	/**
	 * @Author: apple
	 * @Date: 2018/6/8
	 * @param model
	 * @Description:
	 * 工序管理页面
	 */
	@RequestMapping(value="/processes",method=RequestMethod.GET)
	public String processes(Model model){
		return "devices/process_list";
	}


	/**
	 * @Author: apple
	 * @Date: 2018/6/8
	 * @param
	 * @Description:
	 * 工序列表
	 */
	@RequestMapping(value="/processlist")
	@ResponseBody
	public Map process_list(){

		List<WHSProcess> processes;
		processes = processService.findByExample(new WHSProcessExample());
		HashMap<String,List> data = new HashMap<String,List>();
		data.put("data",processes);
		return data;
	}

	/**
	 * @Author: apple
	 * @Date: 2018/6/8
	 * @param process, model
	 * @Description:
	 * 添加工序
	 */
	@RequestMapping(value="/processes", method=RequestMethod.POST)
	public String create(@Validated WHSProcess process, Model model){

		processService.createNew(process);

		return "devices/process_list";
	}

	/**
	 * @Author: apple
	 * @Date: 2018/6/8
	 * @param process, model
	 * @Description:
	 * 添加工序
	 */
	@RequestMapping(value="/updateProcess", method=RequestMethod.POST)
	public String updateProcess(WHSProcess process, Model model){

		processService.updateSingle(process);
		model.addAttribute("device",process);
		return "devices/process_list";
	}

	@RequestMapping(value="/deleteprocess/{id}")
	public String deleteProcess(Model model,@PathVariable(value = "id") Integer id){
		processService.deleteByID(id);
		return "redirect:/devices/processes";
	}

	@RequestMapping(value="/standardtimes",method=RequestMethod.GET)
	public String standtimes(Model model){

		return "/devices/standardtimes";
	}


}
