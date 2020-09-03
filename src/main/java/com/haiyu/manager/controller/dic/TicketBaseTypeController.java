package com.haiyu.manager.controller.dic;


import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.TicketBaseTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 票种基本类型字典表
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
@Controller
@RequestMapping("/ticketBaseType")
public class TicketBaseTypeController {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private TicketBaseTypeService TicketBaseTypeService;

    @RequestMapping("/TicketBaseTypeManage")
    public String TicketBaseTypeManage() {
        return "dic/ticketBaseTypeManage";
    }

    @PostMapping("/getTicketBaseTypeList")
    @ResponseBody
    public PageDataResult getTicketBaseTypeList
            (@RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {

        PageDataResult pdr = new PageDataResult();
        try {
            pdr = TicketBaseTypeService.getTicketBaseTypeList();
            logger.info("黑名单列表查询=pdr:" + pdr);

        } catch (Exception e) {
            e.printStackTrace();
            logger.error("用户列表查询异常！", e);
        }
        return pdr;
    }

}
