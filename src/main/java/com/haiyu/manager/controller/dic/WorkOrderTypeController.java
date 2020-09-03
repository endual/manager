package com.haiyu.manager.controller.dic;


import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.WorkOrderTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
            pdr = workOrderTypeService.getWorkOrderTypeList();
            logger.info("黑名单列表查询=pdr:" + pdr);

        } catch (Exception e) {
            e.printStackTrace();
            logger.error("用户列表查询异常！", e);
        }
        return pdr;
    }

}
