package com.haiyu.manager.controller.dic;


import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.RejectTicketTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 拒绝历史对应的字典表
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
@Controller
@RequestMapping("/rejectTicketType")
public class RejectTicketTypeController {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private RejectTicketTypeService rejectTicketTypeService;

    @RequestMapping("/rejectTicketTypeManage")
    public String rejectTicketTypeManage() {
        return "dic/rejectTicketTypeManage";
    }
    @PostMapping("/getRejectTicketTypeList")
    @ResponseBody
    public PageDataResult getRejectTicketTypeList
            (@RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {

        PageDataResult pdr = new PageDataResult();
        try {
            pdr = rejectTicketTypeService.getRejectTicketTypeList();
            logger.info("黑名单列表查询=pdr:" + pdr);

        } catch (Exception e) {
            e.printStackTrace();
            logger.error("用户列表查询异常！", e);
        }
        return pdr;
    }

}
