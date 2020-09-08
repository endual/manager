package com.haiyu.manager.controller.dic;

import com.haiyu.manager.pojo.dic.ConcessionalLampDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.ConcessionalLampService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * 自动检票机灯光显示代码，定义包括灯光显示的颜色、
闪动频率、次数的信息。
 *
 * @author lzx
 * @date 2020-09-08 14:54:44
 */
@Controller
@RequestMapping("concessionalLamp")
public class ConcessionalLampController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private ConcessionalLampService concessionalLampService;
    @RequestMapping("/concessionalLampManage")
    public String concessionalLampManage() {
        return "dic/concessionalLampManage";
    }

    @PostMapping("/getConcessionalLampList")
    @ResponseBody
    public PageDataResult getConcessionalLampList
            (@RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {

        PageDataResult pdr = new PageDataResult();
        try {
            pdr = concessionalLampService.getConcessionalLampList(pageNum,pageSize);
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
    @PostMapping("setConcessionalLamp")
    @ResponseBody
    public Map<String,Object> setConcessionalLamp(ConcessionalLampDO concessionalLampDO) {
        logger.info("设置[变更]！concessionalLampDO:" + concessionalLampDO);
        Map<String,Object> data = new HashMap();
        if(concessionalLampDO.getId() == null){
            //新增
            data = concessionalLampService.addConcessionalLamp(concessionalLampDO);
        }else{
            //修改
            data = concessionalLampService.updateConcessionalLamp(concessionalLampDO);
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
    @GetMapping("/concessionalLampList")
    @ResponseBody
    public List<ConcessionalLampDO> concessionalLampList() {
        logger.info("获取列表");
        return concessionalLampService.concessionalLampList();

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
        return concessionalLampService.del(id);

    }
}
