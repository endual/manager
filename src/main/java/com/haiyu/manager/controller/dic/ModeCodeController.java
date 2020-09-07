package com.haiyu.manager.controller.dic;


import com.haiyu.manager.pojo.dic.ModeCodeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.ModeCodeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 车站模式 .用于	模式通知/广播（0701）
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
@Controller
@RequestMapping("/modeCode")
public class ModeCodeController {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private ModeCodeService modeCodeService;

    @RequestMapping("/modeCodeManage")
    public String modeCodeManage() {
        return "dic/modeCodeManage";
    }

    @PostMapping("/getModeCodeList")
    @ResponseBody
    public PageDataResult getModeCodeList
            (@RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {

        PageDataResult pdr = new PageDataResult();
        try {
            pdr = modeCodeService.getModeCodeList(pageNum,pageSize);
            logger.info("车站模式列表查询=pdr:" + pdr);

        } catch (Exception e) {
            e.printStackTrace();
            logger.error("车站模式列表查询异常！", e);
        }
        return pdr;
    }
    /**
     *
     *述: 设置车站模式 [新增或更新]
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/12/3 10:54
     */
    @PostMapping("setModeCode")
    @ResponseBody
    public Map<String,Object> setModeCode(ModeCodeDO modeCodeDO) {
        logger.info("设置[车站模式变更]！modeCodeDO:" + modeCodeDO);
        Map<String,Object> data = new HashMap();
        if(modeCodeDO.getId() == null){
            //新增角色
            data = modeCodeService.addModeCode(modeCodeDO);
        }else{
            //修改角色
            data = modeCodeService.updateModeCode(modeCodeDO);
        }
        return data;
    }

    /**
     * 功能描述: 获取车站模式列表
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/11/30 11:35
     */
    @GetMapping("/modeCodeList")
    @ResponseBody
    public List<ModeCodeDO> modeCodeList() {
        logger.info("获取车站模式列表");
        return modeCodeService.modeCodeList();

    }

    /**
     * 功能描述: 删除车站模式 ——逻辑删除
     */
    @PostMapping("del")
    @ResponseBody
    public Map<String, Object> delete(Integer id) {
        logger.info("逻辑删除ar文件类型!id:" + id);
        Map<String, Object> data = new HashMap<>();
        //删除服务类目类型
        return modeCodeService.del(id);

    }
}
