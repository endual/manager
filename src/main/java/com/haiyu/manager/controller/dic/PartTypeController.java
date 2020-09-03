package com.haiyu.manager.controller.dic;


import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.PartTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

/**
 * 部件信息编码维护
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
@Controller
@RequestMapping("/partType")
public class PartTypeController {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private PartTypeService partTypeService;

    @RequestMapping("/partTypeManage")
    public String partTypeManage() {
        return "dic/partTypeManage";
    }
    @PostMapping("/getPartTypeList")
    @ResponseBody
    public PageDataResult getPartTypeList
            (@RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {

        PageDataResult pdr = new PageDataResult();
        try {
            pdr = partTypeService.getPartTypeList();
            logger.info("黑名单列表查询=pdr:" + pdr);

        } catch (Exception e) {
            e.printStackTrace();
            logger.error("用户列表查询异常！", e);
        }
        return pdr;
    }

}
