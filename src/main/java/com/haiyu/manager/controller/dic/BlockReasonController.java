package com.haiyu.manager.controller.dic;

import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.BlockReasonService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("blockReason")
public class BlockReasonController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private BlockReasonService blockReasonService;

    @RequestMapping("/blockReasonManage")
    public String blockReasonManage() {
        return "dic/blockReasonManage";
    }
    @PostMapping("/getBlockReasonList")
    @ResponseBody
    public PageDataResult getBlockReasonList
            (@RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {

        PageDataResult pdr = new PageDataResult();
        try {
            pdr = blockReasonService.getBlockReasonList();
            logger.info("黑名单列表查询=pdr:" + pdr);

        } catch (Exception e) {
            e.printStackTrace();
            logger.error("用户列表查询异常！", e);
        }
        return pdr;
    }
}
