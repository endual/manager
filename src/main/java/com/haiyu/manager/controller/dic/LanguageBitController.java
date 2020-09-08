package com.haiyu.manager.controller.dic;

import com.haiyu.manager.pojo.dic.LanguageBitDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.LanguageBitService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * 车票持有者所偏好使用的语言
 *
 * @author lzx
 * @date 2020-09-08 14:54:44
 */
@Controller
@RequestMapping("languageBit")
public class LanguageBitController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private LanguageBitService languageBitService;
    @RequestMapping("/languageBitManage")
    public String languageBitManage() {
        return "dic/languageBitManage";
    }

    @PostMapping("/getLanguageBitList")
    @ResponseBody
    public PageDataResult getLanguageBitList
            (@RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {

        PageDataResult pdr = new PageDataResult();
        try {
            pdr = languageBitService.getLanguageBitList(pageNum,pageSize);
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
    @PostMapping("setLanguageBit")
    @ResponseBody
    public Map<String,Object> setLanguageBit(LanguageBitDO languageBitDO) {
        logger.info("设置[变更]！languageBitDO:" + languageBitDO);
        Map<String,Object> data = new HashMap();
        if(languageBitDO.getId() == null){
            //新增
            data = languageBitService.addLanguageBit(languageBitDO);
        }else{
            //修改
            data = languageBitService.updateLanguageBit(languageBitDO);
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
    @GetMapping("/languageBitList")
    @ResponseBody
    public List<LanguageBitDO> languageBitList() {
        logger.info("获取列表");
        return languageBitService.languageBitList();

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
        return languageBitService.del(id);

    }
}
