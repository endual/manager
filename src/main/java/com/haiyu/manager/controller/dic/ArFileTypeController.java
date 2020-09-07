package com.haiyu.manager.controller.dic;

import com.haiyu.manager.pojo.dic.ArFileTypeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.ArFileTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Title: UserController
 * @Description: 系统用户管理
 * @author: youqing
 * @version: 1.0
 * @date: 2018/11/20 15:17
 */
@Controller
@RequestMapping("arFileType")
public class ArFileTypeController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private ArFileTypeService arFileTypeService;

    /**
     *
     * 功能描述: 跳到ar文件类型列表
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/11/21 13:50
     */
    @RequestMapping("/arFileTypeManage")
    public String arFileTypeManager() {
        return "dic/arFileTypeManage";
    }

    /**
     * 功能描述: 分页文件类型列表
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/11/21 11:10
     */
    @PostMapping("/getArFileTypeList")
    @ResponseBody
    public PageDataResult getArFileTypeList(@RequestParam("pageNum") Integer pageNum,
                                            @RequestParam("pageSize") Integer pageSize,
            /*@Valid PageRequest page,*/ ArFileTypeDO arFileTypeDO) {
        PageDataResult pdr = new PageDataResult();
        try {
            if (null == pageNum) {
                pageNum = 1;
            }
            if (null == pageSize) {
                pageSize = 10;
            }
            // 获取用户列表

            pdr =  arFileTypeService.getArFileTypeList(pageNum,pageSize);

            logger.info("Ar文件类型列表查询=pdr:" + pdr);

        } catch (Exception e) {
            e.printStackTrace();
            logger.error("Ar文件类型列表查询异常！", e);
        }
        return pdr;
    }
    /**
     *
     *述: 设置ar文件类型[新增或更新]
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/12/3 10:54
     */
    @PostMapping("setArFileType")
    @ResponseBody
    public Map<String,Object> setRole(ArFileTypeDO arFileTypeDO) {
        logger.info("设置[ar文件类型变更]！arFileTypeDO:" + arFileTypeDO);
        Map<String,Object> data = new HashMap();
        if(arFileTypeDO.getId() == null){
            //新增ar文件类型
            data = arFileTypeService.addArFileType(arFileTypeDO);
        }else{
            //修改ar文件类型
            data = arFileTypeService.updateArFileType(arFileTypeDO);
        }
        return data;
    }

    /**
     *
     * 功能描述: 获取ar文件类型列表
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/11/30 11:35
     */
    @GetMapping("arFileTypeList")
    @ResponseBody
    public List<ArFileTypeDO> arFileTypeList(){
        logger.info("获取ar文件类型列表");
        return arFileTypeService.arFileTypeList();
    }

    /**
     * 功能描述: 删除ar文件类型——逻辑删除
     */
    @PostMapping("del")
    @ResponseBody
    public Map<String, Object> delete(Integer id) {
        logger.info("逻辑删除ar文件类型!id:" + id);
        Map<String, Object> data = new HashMap<>();
        //删除服务类目类型
        return arFileTypeService.del(id);

    }
}
