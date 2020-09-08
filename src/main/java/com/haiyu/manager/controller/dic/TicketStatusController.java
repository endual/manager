package com.haiyu.manager.controller.dic;

import com.haiyu.manager.pojo.dic.TicketStatusDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.TicketStatusService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * 票卡状态，十六进制表示
 *
 * @author lzx
 * @date 2020-09-08 14:54:43
 */
@Controller
@RequestMapping("ticketStatus")
public class TicketStatusController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private TicketStatusService ticketStatusService;
    @RequestMapping("/ticketStatusManage")
    public String ticketStatusManage() {
        return "dic/ticketStatusManage";
    }

    @PostMapping("/getTicketStatusList")
    @ResponseBody
    public PageDataResult getTicketStatusList
            (@RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {

        PageDataResult pdr = new PageDataResult();
        try {
            pdr = ticketStatusService.getTicketStatusList(pageNum,pageSize);
            logger.info("列表查询=pdr:" + pdr);

        } catch (Exception e) {
            e.printStackTrace();
            logger.error("列表查询异常！", e);
        }
        return pdr;
    }
    /**
     *
     *述: 设置[新增或更新]
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/12/3 10:54
     */
    @PostMapping("setTicketStatus")
    @ResponseBody
    public Map<String,Object> setTicketStatus(TicketStatusDO ticketStatusDO) {
        logger.info("设置[变更]！ticketStatusDO:" + ticketStatusDO);
        Map<String,Object> data = new HashMap();
        if(ticketStatusDO.getId() == null){
            //新增
            data = ticketStatusService.addTicketStatus(ticketStatusDO);
        }else{
            //修改
            data = ticketStatusService.updateTicketStatus(ticketStatusDO);
        }
        return data;
    }

    /**
     * 功能描述: 获取列表
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/11/30 11:35
     */
    @GetMapping("/ticketStatusList")
    @ResponseBody
    public List<TicketStatusDO> ticketStatusList() {
        logger.info("获取列表");
        return ticketStatusService.ticketStatusList();

    }
    /**
     * 功能描述: 删除——逻辑删除
     */
    @PostMapping("del")
    @ResponseBody
    public Map<String, Object> delete(Integer id) {
        logger.info("逻辑删除!id:" + id);
        Map<String, Object> data = new HashMap<>();
        //删除服务类目类型
        return ticketStatusService.del(id);

    }
}
