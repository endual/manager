package com.haiyu.manager.controller.dic;


import com.haiyu.manager.pojo.dic.CommandEventDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.CommandEventService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 控制命令对应的设备回复事件
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:24
 */
@Controller
@RequestMapping("/commandEvent")
public class CommandEventController {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private CommandEventService commandEventService;

    @RequestMapping("/commandEventManage")
    public String commandEventManage() {
        return "dic/commandEventManage";
    }

    @PostMapping("/getCommandEventList")
    @ResponseBody
    public PageDataResult getCommandEventList
            (@RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {

        PageDataResult pdr = new PageDataResult();
        try {
            pdr = commandEventService.getCommandEventList(pageNum,pageSize);
            logger.info("控制指令列表查询=pdr:" + pdr);

        } catch (Exception e) {
            e.printStackTrace();
            logger.error("控制指令列表查询异常！", e);
        }
        return pdr;
    }
    /**
     *
     *述: 设置控制指令[新增或更新]
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/12/3 10:54
     */
    @PostMapping("setCommandEvent")
    @ResponseBody
    public Map<String,Object> setCommandEvent(CommandEventDO commandEventDO) {
        logger.info("设置[控制指令变更]！commandEventDO:" + commandEventDO);
        Map<String,Object> data = new HashMap();
        if(commandEventDO.getId() == null){
            //新增控制指令
            data = commandEventService.addCommandEvent(commandEventDO);
        }else{
            //修改控制指令
            data = commandEventService.updateCommandEvent(commandEventDO);
        }
        return data;
    }

    /**
     * 功能描述: 获取控制指令列表
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/11/30 11:35
     */
    @GetMapping("/commandEventList")
    @ResponseBody
    public List<CommandEventDO> commandEventList() {
        logger.info("获取控制指令列表");
        return commandEventService.commandEventList();

    }
    /**
     * 功能描述: 删除控制指令——逻辑删除
     */
    @PostMapping("del")
    @ResponseBody
    public Map<String, Object> delete(Integer id) {
        logger.info("逻辑删除控制指令!id:" + id);
        Map<String, Object> data = new HashMap<>();
        //删除服务类目类型
        return commandEventService.del(id);

    }
}
