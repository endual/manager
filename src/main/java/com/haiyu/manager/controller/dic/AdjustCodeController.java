package com.haiyu.manager.controller.dic;

import com.haiyu.manager.pojo.dic.AdjustCodeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.AdjustCodeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * 
 *
 * @author lzx
 * @date 2020-09-08 14:54:44
 */
@Controller
@RequestMapping("adjustCode")
public class AdjustCodeController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private AdjustCodeService adjustCodeService;
    @RequestMapping("/adjustCodeManage")
    public String adjustCodeManage() {
        return "dic/adjustCodeManage";
    }

    @PostMapping("/getAdjustCodeList")
    @ResponseBody
    public PageDataResult getAdjustCodeList
            (@RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {

        PageDataResult pdr = new PageDataResult();
        try {
            pdr = adjustCodeService.getAdjustCodeList(pageNum,pageSize);
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
    @PostMapping("setAdjustCode")
    @ResponseBody
    public Map<String,Object> setAdjustCode(AdjustCodeDO adjustCodeDO) {
        logger.info("设置[变更]！adjustCodeDO:" + adjustCodeDO);
        Map<String,Object> data = new HashMap();
        if(adjustCodeDO.getId() == null){
            //新增
            data = adjustCodeService.addAdjustCode(adjustCodeDO);
        }else{
            //修改
            data = adjustCodeService.updateAdjustCode(adjustCodeDO);
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
    @GetMapping("/adjustCodeList")
    @ResponseBody
    public List<AdjustCodeDO> adjustCodeList() {
        logger.info("获取列表");
        return adjustCodeService.adjustCodeList();

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
        return adjustCodeService.del(id);

    }
}
