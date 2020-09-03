package com.haiyu.manager.controller.dic;


import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.CommandEventService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

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
            pdr = commandEventService.getCommandEventList();
            logger.info("黑名单列表查询=pdr:" + pdr);

        } catch (Exception e) {
            e.printStackTrace();
            logger.error("用户列表查询异常！", e);
        }
        return pdr;
    }

}
