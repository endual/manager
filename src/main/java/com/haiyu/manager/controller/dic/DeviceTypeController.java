package com.haiyu.manager.controller.dic;

import com.haiyu.manager.pojo.dic.DeviceTypeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.DeviceTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * 设备类型，十六进制表示
 *
 * @author lzx
 * @date 2020-09-08 14:54:44
 */
@Controller
@RequestMapping("deviceType")
public class DeviceTypeController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private DeviceTypeService deviceTypeService;
    @RequestMapping("/deviceTypeManage")
    public String deviceTypeManage() {
        return "dic/deviceTypeManage";
    }

    @PostMapping("/getDeviceTypeList")
    @ResponseBody
    public PageDataResult getDeviceTypeList
            (@RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {

        PageDataResult pdr = new PageDataResult();
        try {
            pdr = deviceTypeService.getDeviceTypeList(pageNum,pageSize);
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
    @PostMapping("setDeviceType")
    @ResponseBody
    public Map<String,Object> setDeviceType(DeviceTypeDO deviceTypeDO) {
        logger.info("设置[变更]！deviceTypeDO:" + deviceTypeDO);
        Map<String,Object> data = new HashMap();
        if(deviceTypeDO.getId() == null){
            //新增
            data = deviceTypeService.addDeviceType(deviceTypeDO);
        }else{
            //修改
            data = deviceTypeService.updateDeviceType(deviceTypeDO);
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
    @GetMapping("/deviceTypeList")
    @ResponseBody
    public List<DeviceTypeDO> deviceTypeList() {
        logger.info("获取列表");
        return deviceTypeService.deviceTypeList();

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
        return deviceTypeService.del(id);

    }
}
