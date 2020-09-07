package com.haiyu.manager.controller.dic;


import com.haiyu.manager.pojo.dic.DailyKnotTypeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.DailyKnotTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 日结任务类型字典表
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
@Controller
@RequestMapping("/dailyKnotType")
public class DailyKnotTypeController {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private DailyKnotTypeService dailyKnotTypeService;

    @RequestMapping("/dailyKnotTypeManage")
    public String dailyKnotTypeManage() {
        return "dic/dailyKnotTypeManage";
    }
    @PostMapping("/getDailyKnotTypeList")
    @ResponseBody
    public PageDataResult getDailyKnotTypeList
            (@RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {

        PageDataResult pdr = new PageDataResult();
        try {
            pdr = dailyKnotTypeService.getDailyKnotTypeList(pageNum,pageSize);
            logger.info("日结任务列表查询=pdr:" + pdr);

        } catch (Exception e) {
            e.printStackTrace();
            logger.error("日结任务列表查询异常！", e);
        }
        return pdr;
    }
    /**
     *
     *述: 设置日结任务[新增或更新]
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/12/3 10:54
     */
    @PostMapping("setDailyKnotType")
    @ResponseBody
    public Map<String,Object> setDailyKnotType(DailyKnotTypeDO dailyKnotTypeDO) {
        logger.info("设置[日结任务类型]！dailyKnotTypeDO:" + dailyKnotTypeDO);
        Map<String,Object> data = new HashMap();
        if(dailyKnotTypeDO.getId() == null){
            //新增日结任务
            data = dailyKnotTypeService.addDailyKnotType(dailyKnotTypeDO);
        }else{
            //修改日结任务
            data = dailyKnotTypeService.updateDailyKnotType(dailyKnotTypeDO);
        }
        return data;
    }

    /**
     * 功能描述: 获取日结任务列表
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/11/30 11:35
     */
    @GetMapping("/dailyKnotTypeList")
    @ResponseBody
    public List<DailyKnotTypeDO> dailyKnotTypeList() {
        logger.info("获取日结任务列表");
        return dailyKnotTypeService.dailyKnotTypeList();

    }

    /**
     * 功能描述: 删除日结任务——逻辑删除
     */
    @PostMapping("del")
    @ResponseBody
    public Map<String, Object> delete(Integer id) {
        logger.info("逻辑删除日结任务!id:" + id);
        Map<String, Object> data = new HashMap<>();
        //删除服务类目类型
        return dailyKnotTypeService.del(id);

    }
}
