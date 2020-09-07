package com.haiyu.manager.controller.dic;


import com.haiyu.manager.pojo.dic.RejectTicketTypeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.RejectTicketTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 拒绝历史对应的字典表
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
@Controller
@RequestMapping("/rejectTicketType")
public class RejectTicketTypeController {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private RejectTicketTypeService rejectTicketTypeService;

    @RequestMapping("/rejectTicketTypeManage")
    public String rejectTicketTypeManage() {
        return "dic/rejectTicketTypeManage";
    }
    @PostMapping("/getRejectTicketTypeList")
    @ResponseBody
    public PageDataResult getRejectTicketTypeList
            (@RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {

        PageDataResult pdr = new PageDataResult();
        try {
            pdr = rejectTicketTypeService.getRejectTicketTypeList(pageNum,pageSize);
            logger.info("拒绝历史对应列表查询=pdr:" + pdr);

        } catch (Exception e) {
            e.printStackTrace();
            logger.error("拒绝历史对应列表查询异常！", e);
        }
        return pdr;
    }
    /**
     *
     *述: 设置拒绝历史对应[新增或更新]
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/12/3 10:54
     */
    @PostMapping("setRejectTicketType")
    @ResponseBody
    public Map<String,Object> setRejectTicketType(RejectTicketTypeDO RejectTicketTypeDO) {
        logger.info("设置[拒绝历史对应]！RejectTicketTypeDO:" + RejectTicketTypeDO);
        Map<String,Object> data = new HashMap();
        if(RejectTicketTypeDO.getId() == null){
            //新增拒绝历史对应
            data = rejectTicketTypeService.addRejectTicketType(RejectTicketTypeDO);
        }else{
            //修改拒绝历史对应
            data = rejectTicketTypeService.updateRejectTicketType(RejectTicketTypeDO);
        }
        return data;
    }

    /**
     * 功能描述: 获取拒绝历史对应列表
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/11/30 11:35
     */
    @GetMapping("/RejectTicketTypeList")
    @ResponseBody
    public List<RejectTicketTypeDO> RejectTicketTypeList() {
        logger.info("获取拒绝历史对应列表");
        return rejectTicketTypeService.rejectTicketTypeList();

    }
    /**
     * 功能描述: 删除拒绝历史对应——逻辑删除
     */
    @PostMapping("del")
    @ResponseBody
    public Map<String, Object> delete(Integer id) {
        logger.info("逻辑删除拒绝历史对应!id:" + id);
        Map<String, Object> data = new HashMap<>();
        //删除服务类目类型
        return rejectTicketTypeService.del(id);

    }
}
