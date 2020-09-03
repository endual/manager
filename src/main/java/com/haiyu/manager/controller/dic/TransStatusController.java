package com.haiyu.manager.controller.dic;

import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.TransStatusService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


/**
 * 交易状态
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
@Controller
@RequestMapping("/transStatus")
public class TransStatusController {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private TransStatusService transStatusService;

    @RequestMapping("/transStatusManage")
    public String transStatusManage() {
        return "dic/transStatusManage";
    }
    @PostMapping("/getTransStatusList")
    @ResponseBody
    public PageDataResult getTransStatusList
            (@RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {

        PageDataResult pdr = new PageDataResult();
        try {
            pdr = transStatusService.getTransStatusList();
            logger.info("黑名单列表查询=pdr:" + pdr);

        } catch (Exception e) {
            e.printStackTrace();
            logger.error("用户列表查询异常！", e);
        }
        return pdr;
    }

}
