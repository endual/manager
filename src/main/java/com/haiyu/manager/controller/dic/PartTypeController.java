package com.haiyu.manager.controller.dic;


import com.haiyu.manager.pojo.dic.PartTypeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.PartTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 部件信息编码维护
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
@Controller
@RequestMapping("/partType")
public class PartTypeController {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private PartTypeService partTypeService;

    @RequestMapping("/partTypeManage")
    public String partTypeManage() {
        return "dic/partTypeManage";
    }
    @PostMapping("/getPartTypeList")
    @ResponseBody
    public PageDataResult getPartTypeList
            (@RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {

        PageDataResult pdr = new PageDataResult();
        try {
            pdr = partTypeService.getPartTypeList(pageNum,pageSize);
            logger.info("部件信息编码列表查询=pdr:" + pdr);

        } catch (Exception e) {
            e.printStackTrace();
            logger.error("部件信息编码列表查询异常！", e);
        }
        return pdr;
    }

    /**
     *
     *述: 设置部件信息[新增或更新]
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/12/3 10:54
     */
    @PostMapping("setPartType")
    @ResponseBody
    public Map<String,Object> setPartType(PartTypeDO partTypeDO) {
        logger.info("设置[部件信息编码变更]！partTypeDO:" + partTypeDO);
        Map<String,Object> data = new HashMap();
        if(partTypeDO.getId() == null){
            //新增部件信息
            data = partTypeService.addPartType(partTypeDO);
        }else{
            //修改部件信息
            data = partTypeService.updatePartType(partTypeDO);
        }
        return data;
    }

    /**
     * 功能描述: 获取部件信息列表
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/11/30 11:35
     */
    @GetMapping("/partTypeList")
    @ResponseBody
    public List<PartTypeDO> partTypeList() {
        logger.info("获取部件信息编码列表");
        return partTypeService.partTypeList();

    }

    /**
     * 功能描述: 删除部件信息——逻辑删除
     */
    @PostMapping("del")
    @ResponseBody
    public Map<String, Object> delete(Integer id) {
        logger.info("逻辑删除部件信息!id:" + id);
        Map<String, Object> data = new HashMap<>();
        //删除服务类目类型
        return partTypeService.del(id);

    }

}
