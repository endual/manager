package com.haiyu.manager.controller.dic;


import com.haiyu.manager.pojo.dic.WorkOrderTypeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.WorkOrderTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 工单类型字典表。有故障申报工单，采购工单，设备更换工单，设备维修工单，设备维修工单，报废工单，返厂工单等
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:22
 */
@Controller
@RequestMapping("/workOrderType")
public class WorkOrderTypeController {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private WorkOrderTypeService workOrderTypeService;

    @RequestMapping("/workOrderTypeManage")
    public String workOrderTypeManage() {
        return "dic/workOrderTypeManage";
    }
    @PostMapping("/getWorkOrderTypeList")
    @ResponseBody
    public PageDataResult getWorkorderTypeList
            (@RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {

        PageDataResult pdr = new PageDataResult();
        try {
            pdr = workOrderTypeService.getWorkOrderTypeList(pageNum,pageSize);
            logger.info("交易状态列表查询=pdr:" + pdr);

        } catch (Exception e) {
            e.printStackTrace();
            logger.error("交易状态列表查询异常！", e);
        }
        return pdr;
    }
    /**
     *
     *述: 设置交易状态[新增或更新]
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/12/3 10:54
     */
    @PostMapping("setWorkOrderType")
    @ResponseBody
    public Map<String,Object> setWorkOrderType(WorkOrderTypeDO workOrderTypeDO) {
        logger.info("设置[交易状态]！workOrderTypeDO:" + workOrderTypeDO);
        Map<String,Object> data = new HashMap();
        if(workOrderTypeDO.getId() == null){
            //新增角色
            data = workOrderTypeService.addWorkOrderType(workOrderTypeDO);
        }else{
            //修改角色
            data = workOrderTypeService.updateWorkOrderType(workOrderTypeDO);
        }
        return data;
    }

    /**
     * 功能描述: 获取交易状态列表
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/11/30 11:35
     */
    @GetMapping("/workOrderTypeList")
    @ResponseBody
    public List<WorkOrderTypeDO> workOrderTypeList() {
        logger.info("获取交易状态列表");
        return workOrderTypeService.workOrderTypeList();

    }
    /**
     * 功能描述: 删除交易状态——逻辑删除
     */
    @PostMapping("del")
    @ResponseBody
    public Map<String, Object> delete(Integer id) {
        logger.info("逻辑删除交易状态!id:" + id);
        Map<String, Object> data = new HashMap<>();
        //删除服务类目类型
        return workOrderTypeService.del(id);

    }
}
