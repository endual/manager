package com.haiyu.manager.controller.dic;

import com.haiyu.manager.pojo.dic.BlockReasonDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.BlockReasonService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("blockReason")
public class BlockReasonController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private BlockReasonService blockReasonService;

    @RequestMapping("/blockReasonManage")
    public String blockReasonManage() {
        return "dic/blockReasonManage";
    }

    @PostMapping("/getBlockReasonList")
    @ResponseBody
    public PageDataResult getBlockReasonList
            (@RequestParam("pageNum") Integer pageNum,
             @RequestParam("pageSize") Integer pageSize) {

        PageDataResult pdr = new PageDataResult();
        try {
            pdr = blockReasonService.getBlockReasonList(pageNum,pageSize);
            logger.info("锁卡原因列表查询=pdr:" + pdr);

        } catch (Exception e) {
            e.printStackTrace();
            logger.error("锁卡列表查询异常！", e);
        }
        return pdr;
    }

    /**
     *
     *述: 设置锁卡原因[新增或更新]
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/12/3 10:54
     */
    @PostMapping("setBlockReason")
    @ResponseBody
    public Map<String,Object> setBlockReason(BlockReasonDO blockReasonDO) {
        logger.info("设置[ar文件类型变更]！blockReasonDO:" + blockReasonDO);
        Map<String,Object> data = new HashMap();
        if(blockReasonDO.getId() == null){
            //新增角色
            data = blockReasonService.addBlockReason(blockReasonDO);
        }else{
            //修改角色
            data = blockReasonService.updateBlockReason(blockReasonDO);
        }
        return data;
    }
    
    /**
     * 功能描述: 获取锁卡原因列表
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/11/30 11:35
     */
    @GetMapping("/blockReasonList")
    @ResponseBody
    public List<BlockReasonDO> blockReasonList() {
        logger.info("获取锁卡原因列表");
        return blockReasonService.blockReasonList();

    }
    /**
     * 功能描述: 删除锁卡原因——逻辑删除
     */
    @PostMapping("del")
    @ResponseBody
    public Map<String, Object> delete(Integer id) {
        logger.info("逻辑删除锁卡原因!id:" + id);
        Map<String, Object> data = new HashMap<>();
        //删除服务类目类型
        return blockReasonService.del(id);

    }
}
