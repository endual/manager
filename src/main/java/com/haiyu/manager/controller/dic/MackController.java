package com.haiyu.manager.controller.dic;

import com.haiyu.manager.pojo.dic.MackDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.MackService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * 消息确认码
 *
 * @author lzx
 * @date 2020-09-08 14:54:44
 */
@Controller
@RequestMapping("mack")
public class MackController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private MackService mackService;
    @RequestMapping("/mackManage")
    public String mackManage() {
        return "dic/mackManage";
    }

    @PostMapping("/getMackList")
    @ResponseBody
    public PageDataResult getMackList
            (@RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {

        PageDataResult pdr = new PageDataResult();
        try {
            pdr = mackService.getMackList(pageNum,pageSize);
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
    @PostMapping("setMack")
    @ResponseBody
    public Map<String,Object> setMack(MackDO mackDO) {
        logger.info("设置[变更]！mackDO:" + mackDO);
        Map<String,Object> data = new HashMap();
        if(mackDO.getId() == null){
            //新增
            data = mackService.addMack(mackDO);
        }else{
            //修改
            data = mackService.updateMack(mackDO);
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
    @GetMapping("/mackList")
    @ResponseBody
    public List<MackDO> mackList() {
        logger.info("获取列表");
        return mackService.mackList();

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
        return mackService.del(id);

    }
}
