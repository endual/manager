package com.haiyu.manager.controller.dic;

import com.haiyu.manager.pojo.dic.ChipTypeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.ChipTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * 票卡介质芯片类型

 *
 * @author lzx
 * @date 2020-09-08 14:54:44
 */
@Controller
@RequestMapping("chipType")
public class ChipTypeController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private ChipTypeService chipTypeService;
    @RequestMapping("/chipTypeManage")
    public String chipTypeManage() {
        return "dic/chipTypeManage";
    }

    @PostMapping("/getChipTypeList")
    @ResponseBody
    public PageDataResult getChipTypeList
            (@RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {

        PageDataResult pdr = new PageDataResult();
        try {
            pdr = chipTypeService.getChipTypeList(pageNum,pageSize);
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
    @PostMapping("setChipType")
    @ResponseBody
    public Map<String,Object> setChipType(ChipTypeDO chipTypeDO) {
        logger.info("设置[变更]！chipTypeDO:" + chipTypeDO);
        Map<String,Object> data = new HashMap();
        if(chipTypeDO.getId() == null){
            //新增
            data = chipTypeService.addChipType(chipTypeDO);
        }else{
            //修改
            data = chipTypeService.updateChipType(chipTypeDO);
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
    @GetMapping("/chipTypeList")
    @ResponseBody
    public List<ChipTypeDO> chipTypeList() {
        logger.info("获取列表");
        return chipTypeService.chipTypeList();

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
        return chipTypeService.del(id);

    }
}
