package com.haiyu.manager.controller.dic;

import com.haiyu.manager.pojo.dic.PassengerTypeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.PassengerTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * 乘客类型分类
 *
 * @author lzx
 * @date 2020-09-08 14:54:44
 */
@Controller
@RequestMapping("passengerType")
public class PassengerTypeController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private PassengerTypeService passengerTypeService;
    @RequestMapping("/passengerTypeManage")
    public String passengerTypeManage() {
        return "dic/passengerTypeManage";
    }

    @PostMapping("/getPassengerTypeList")
    @ResponseBody
    public PageDataResult getPassengerTypeList
            (@RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {

        PageDataResult pdr = new PageDataResult();
        try {
            pdr = passengerTypeService.getPassengerTypeList(pageNum,pageSize);
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
    @PostMapping("setPassengerType")
    @ResponseBody
    public Map<String,Object> setPassengerType(PassengerTypeDO passengerTypeDO) {
        logger.info("设置[变更]！passengerTypeDO:" + passengerTypeDO);
        Map<String,Object> data = new HashMap();
        if(passengerTypeDO.getId() == null){
            //新增
            data = passengerTypeService.addPassengerType(passengerTypeDO);
        }else{
            //修改
            data = passengerTypeService.updatePassengerType(passengerTypeDO);
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
    @GetMapping("/passengerTypeList")
    @ResponseBody
    public List<PassengerTypeDO> passengerTypeList() {
        logger.info("获取列表");
        return passengerTypeService.passengerTypeList();

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
        return passengerTypeService.del(id);

    }
}
