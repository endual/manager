package com.haiyu.manager.controller.dic;

import com.haiyu.manager.pojo.dic.TestFlagDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.TestFlagService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * 票卡测试标志位
 *
 * @author lzx
 * @date 2020-09-08 14:54:44
 */
@Controller
@RequestMapping("testFlag")
public class TestFlagController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private TestFlagService testFlagService;
    @RequestMapping("/testFlagManage")
    public String testFlagManage() {
        return "dic/testFlagManage";
    }

    @PostMapping("/getTestFlagList")
    @ResponseBody
    public PageDataResult getTestFlagList
            (@RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {

        PageDataResult pdr = new PageDataResult();
        try {
            pdr = testFlagService.getTestFlagList(pageNum,pageSize);
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
    @PostMapping("setTestFlag")
    @ResponseBody
    public Map<String,Object> setTestFlag(TestFlagDO testFlagDO) {
        logger.info("设置[变更]！testFlagDO:" + testFlagDO);
        Map<String,Object> data = new HashMap();
        if(testFlagDO.getId() == null){
            //新增
            data = testFlagService.addTestFlag(testFlagDO);
        }else{
            //修改
            data = testFlagService.updateTestFlag(testFlagDO);
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
    @GetMapping("/testFlagList")
    @ResponseBody
    public List<TestFlagDO> testFlagList() {
        logger.info("获取列表");
        return testFlagService.testFlagList();

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
        return testFlagService.del(id);

    }
}
