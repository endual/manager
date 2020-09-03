package com.haiyu.manager.controller.dic;


import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.ModeCodeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

/**
 * 车站模式 .用于	模式通知/广播（0701）
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
@Controller
@RequestMapping("/modeCode")
public class ModeCodeController {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private ModeCodeService modeCodeService;

    @RequestMapping("/modeCodeManage")
    public String modeCodeManage() {
        return "dic/modeCodeManage";
    }

    @PostMapping("/getModeCodeList")
    @ResponseBody
    public PageDataResult getModeCodeList
            (@RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {

        PageDataResult pdr = new PageDataResult();
        try {
            pdr = modeCodeService.getModeCodeList();
            logger.info("黑名单列表查询=pdr:" + pdr);

        } catch (Exception e) {
            e.printStackTrace();
            logger.error("用户列表查询异常！", e);
        }
        return pdr;
    }
}
