package com.haiyu.manager.controller.dic;


import com.haiyu.manager.pojo.dic.RejectCodeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.RejectCodeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 拒绝码字典表
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
@Controller
@RequestMapping("/rejectCode")
public class RejectCodeController {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private RejectCodeService rejectCodeService;

    @RequestMapping("/rejectCodeManage")
    public String rejectCodeManage() {
        return "dic/rejectCodeManage";
    }
    @PostMapping("/getRejectCodeList")
    @ResponseBody
    public PageDataResult getRejectCodeList
            (@RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {

        PageDataResult pdr = new PageDataResult();
        try {
            pdr = rejectCodeService.getRejectCodeList(pageNum,pageSize);
            logger.info("拒绝码列表查询=pdr:" + pdr);

        } catch (Exception e) {
            e.printStackTrace();
            logger.error("拒绝码列表查询异常！", e);
        }
        return pdr;
    }
    /**
     *
     *述: 设置拒绝码[新增或更新]
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/12/3 10:54
     */
    @PostMapping("setRejectCode")
    @ResponseBody
    public Map<String,Object> setRejectCode(RejectCodeDO rejectCodeDO) {
        logger.info("设置[拒绝码变更]！rejectCodeDO:" + rejectCodeDO);
        Map<String,Object> data = new HashMap();
        if(rejectCodeDO.getId() == null){
            //新增角色
            data = rejectCodeService.addRejectCode(rejectCodeDO);
        }else{
            //修改角色
            data = rejectCodeService.updateRejectCode(rejectCodeDO);
        }
        return data;
    }

    /**
     * 功能描述: 获取拒绝码列表
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/11/30 11:35
     */
    @GetMapping("/rejectCodeList")
    @ResponseBody
    public List<RejectCodeDO> rejectCodeList() {
        logger.info("获取拒绝码列表");
        return rejectCodeService.rejectCodeList();

    }
    /**
     * 功能描述: 删除拒绝码——逻辑删除
     */
    @PostMapping("del")
    @ResponseBody
    public Map<String, Object> delete(Integer id) {
        logger.info("逻辑删除拒绝码!id:" + id);
        Map<String, Object> data = new HashMap<>();
        //删除服务类目类型
        return rejectCodeService.del(id);

    }
}
