package com.haiyu.manager.controller.dic;

import com.haiyu.manager.pojo.dic.DurationModeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.DurationModeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * 车票有效期类别
 *
 * @author lzx
 * @date 2020-09-08 14:54:44
 */
@Controller
@RequestMapping("durationMode")
public class DurationModeController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private DurationModeService durationModeService;
    @RequestMapping("/durationModeManage")
    public String durationModeManage() {
        return "dic/durationModeManage";
    }

    @PostMapping("/getDurationModeList")
    @ResponseBody
    public PageDataResult getDurationModeList
            (@RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {

        PageDataResult pdr = new PageDataResult();
        try {
            pdr = durationModeService.getDurationModeList(pageNum,pageSize);
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
    @PostMapping("setDurationMode")
    @ResponseBody
    public Map<String,Object> setDurationMode(DurationModeDO durationModeDO) {
        logger.info("设置[变更]！durationModeDO:" + durationModeDO);
        Map<String,Object> data = new HashMap();
        if(durationModeDO.getId() == null){
            //新增
            data = durationModeService.addDurationMode(durationModeDO);
        }else{
            //修改
            data = durationModeService.updateDurationMode(durationModeDO);
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
    @GetMapping("/durationModeList")
    @ResponseBody
    public List<DurationModeDO> durationModeList() {
        logger.info("获取列表");
        return durationModeService.durationModeList();

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
        return durationModeService.del(id);

    }
}
