package com.haiyu.manager.controller.dic;


import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.EodModuleService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

/**
 * 参数文件字典表
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
@Controller
@RequestMapping("/eodModule")
public class EodModuleController {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private EodModuleService eodModuleService;

    @RequestMapping("/eodModuleManage")
    public String eodModuleManage() {
        return "dic/eodModuleManage";
    }
    @PostMapping("/getEodModuleList")
    @ResponseBody
    public PageDataResult getEodModuleList
            (@RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {

        PageDataResult pdr = new PageDataResult();
        try {
            pdr = eodModuleService.getEodModuleList();
            logger.info("黑名单列表查询=pdr:" + pdr);

        } catch (Exception e) {
            e.printStackTrace();
            logger.error("用户列表查询异常！", e);
        }
        return pdr;
    }

}
