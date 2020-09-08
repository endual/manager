package com.haiyu.manager.controller.dic;

import com.haiyu.manager.pojo.dic.RecycleSjtFlagDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.RecycleSjtFlagService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * 单程票回收标志
用以记录出站 AGM 是否将当前被正常处理的单程票进行
了回收。
 *
 * @author lzx
 * @date 2020-09-08 14:54:44
 */
@Controller
@RequestMapping("recycleSjtFlag")
public class RecycleSjtFlagController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private RecycleSjtFlagService recycleSjtFlagService;
    @RequestMapping("/recycleSjtFlagManage")
    public String recycleSjtFlagManage() {
        return "dic/recycleSjtFlagManage";
    }

    @PostMapping("/getRecycleSjtFlagList")
    @ResponseBody
    public PageDataResult getRecycleSjtFlagList
            (@RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {

        PageDataResult pdr = new PageDataResult();
        try {
            pdr = recycleSjtFlagService.getRecycleSjtFlagList(pageNum,pageSize);
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
    @PostMapping("setRecycleSjtFlag")
    @ResponseBody
    public Map<String,Object> setRecycleSjtFlag(RecycleSjtFlagDO recycleSjtFlagDO) {
        logger.info("设置[变更]！recycleSjtFlagDO:" + recycleSjtFlagDO);
        Map<String,Object> data = new HashMap();
        if(recycleSjtFlagDO.getId() == null){
            //新增
            data = recycleSjtFlagService.addRecycleSjtFlag(recycleSjtFlagDO);
        }else{
            //修改
            data = recycleSjtFlagService.updateRecycleSjtFlag(recycleSjtFlagDO);
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
    @GetMapping("/recycleSjtFlagList")
    @ResponseBody
    public List<RecycleSjtFlagDO> recycleSjtFlagList() {
        logger.info("获取列表");
        return recycleSjtFlagService.recycleSjtFlagList();

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
        return recycleSjtFlagService.del(id);

    }
}
