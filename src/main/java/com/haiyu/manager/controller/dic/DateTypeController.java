package com.haiyu.manager.controller.dic;

import com.haiyu.manager.pojo.dic.DateTypeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.DateTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * 日期类型
此字段为计算车票费用的输入参数之一

 *
 * @author lzx
 * @date 2020-09-08 14:54:44
 */
@Controller
@RequestMapping("dateType")
public class DateTypeController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private DateTypeService dateTypeService;
    @RequestMapping("/dateTypeManage")
    public String dateTypeManage() {
        return "dic/dateTypeManage";
    }

    @PostMapping("/getDateTypeList")
    @ResponseBody
    public PageDataResult getDateTypeList
            (@RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {

        PageDataResult pdr = new PageDataResult();
        try {
            pdr = dateTypeService.getDateTypeList(pageNum,pageSize);
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
    @PostMapping("setDateType")
    @ResponseBody
    public Map<String,Object> setDateType(DateTypeDO dateTypeDO) {
        logger.info("设置[变更]！dateTypeDO:" + dateTypeDO);
        Map<String,Object> data = new HashMap();
        if(dateTypeDO.getId() == null){
            //新增
            data = dateTypeService.addDateType(dateTypeDO);
        }else{
            //修改
            data = dateTypeService.updateDateType(dateTypeDO);
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
    @GetMapping("/dateTypeList")
    @ResponseBody
    public List<DateTypeDO> dateTypeList() {
        logger.info("获取列表");
        return dateTypeService.dateTypeList();

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
        return dateTypeService.del(id);

    }
}
