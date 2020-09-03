package com.haiyu.manager.controller.dic;


import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.KeepDataTableService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

/**
 * lc需要保留数据的表。表名。

 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
@Controller
@RequestMapping("/keepDataTable")
public class KeepDataTableController {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private KeepDataTableService keepDataTableService;

    @RequestMapping("/keepDataTableManage")
    public String keepDataTableManage() {
        return "dic/keepDataTableManage";
    }

    @PostMapping("/getKeepDataTableList")
    @ResponseBody
    public PageDataResult getKeepdataTableList
            (@RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {

        PageDataResult pdr = new PageDataResult();
        try {
            pdr = keepDataTableService.getKeepdataTableList();
            logger.info("黑名单列表查询=pdr:" + pdr);

        } catch (Exception e) {
            e.printStackTrace();
            logger.error("用户列表查询异常！", e);
        }
        return pdr;
    }

}
