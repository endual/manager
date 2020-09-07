package com.haiyu.manager.controller.dic;


import com.haiyu.manager.pojo.dic.KeepDataTableDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.KeepDataTableService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * lc需要保留数据的表。表名。

 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
@Controller
@RequestMapping("/keepDataTable")
public class KeepDataTableController {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private KeepDataTableService keepDateTableService;

    @RequestMapping("/keepDataTableManage")
    public String keepDateTableManage() {
        return "dic/keepDataTableManage";
    }

    @PostMapping("/getKeepDataTableList")
    @ResponseBody
    public PageDataResult getKeepDataTableList
            (@RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {

        PageDataResult pdr = new PageDataResult();
        try {
            pdr = keepDateTableService.getKeepDataTableList(pageNum,pageSize);
            logger.info("lc需要保留数据的表列表查询=pdr:" + pdr);

        } catch (Exception e) {
            e.printStackTrace();
            logger.error("lc需要保留数据的表列表查询异常！", e);
        }
        return pdr;
    }
    /**
     *
     *述: 设置lc需要保留数据的表[新增或更新]
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/12/3 10:54
     */
    @PostMapping("setKeepDataTable")
    @ResponseBody
    public Map<String,Object> setKeepDataTable(KeepDataTableDO keepDateTableDO) {
        logger.info("设置[lc需要保留数据的表变更]！keepDateTableDO:" + keepDateTableDO);
        Map<String,Object> data = new HashMap();
        if(keepDateTableDO.getId() == null){
            //新增角色
            data = keepDateTableService.addKeepDataTable(keepDateTableDO);
        }else{
            //修改角色
            data = keepDateTableService.updateKeepDataTable(keepDateTableDO);
        }
        return data;
    }

    /**
     * 功能描述: 获取lc需要保留数据的表列表
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/11/30 11:35
     */
    @GetMapping("/keepDataTableList")
    @ResponseBody
    public List<KeepDataTableDO> keepDateTableList() {
        logger.info("获取lc需要保留数据的表列表");
        return keepDateTableService.keepDateTableList();
    }

    /**
     * 功能描述: 删除lc需要保留数据的表——逻辑删除
     */
    @PostMapping("del")
    @ResponseBody
    public Map<String, Object> delete(Integer id) {
        logger.info("逻辑删除lc需要保留数据的表!id:" + id);
        Map<String, Object> data = new HashMap<>();
        //删除服务类目类型
        return keepDateTableService.del(id);

    }
}
