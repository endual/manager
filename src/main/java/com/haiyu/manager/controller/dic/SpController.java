package com.haiyu.manager.controller.dic;

import com.haiyu.manager.pojo.dic.SpDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.SpService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * 运营商编号
 *
 * @author lzx
 * @date 2020-09-08 14:54:44
 */
@Controller
@RequestMapping("sp")
public class SpController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private SpService spService;
    @RequestMapping("/spManage")
    public String spManage() {
        return "dic/spManage";
    }

    @PostMapping("/getSpList")
    @ResponseBody
    public PageDataResult getSpList
            (@RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {

        PageDataResult pdr = new PageDataResult();
        try {
            pdr = spService.getSpList(pageNum,pageSize);
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
    @PostMapping("setSp")
    @ResponseBody
    public Map<String,Object> setSp(SpDO spDO) {
        logger.info("设置[变更]！spDO:" + spDO);
        Map<String,Object> data = new HashMap();
        if(spDO.getId() == null){
            //新增
            data = spService.addSp(spDO);
        }else{
            //修改
            data = spService.updateSp(spDO);
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
    @GetMapping("/spList")
    @ResponseBody
    public List<SpDO> spList() {
        logger.info("获取列表");
        return spService.spList();

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
        return spService.del(id);

    }
}
