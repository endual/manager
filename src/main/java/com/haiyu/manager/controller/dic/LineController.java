package com.haiyu.manager.controller.dic;

import com.haiyu.manager.pojo.dic.LineDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.LineService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * 线路编号
线路编码是轨道交通各线路在线网中的唯一编号。每条
线路在系统中具有唯一的编码。编码用 BCD 码表示
 *
 * @author lzx
 * @date 2020-09-08 14:54:44
 */
@Controller
@RequestMapping("line")
public class LineController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private LineService lineService;
    @RequestMapping("/lineManage")
    public String lineManage() {
        return "dic/lineManage";
    }

    @PostMapping("/getLineList")
    @ResponseBody
    public PageDataResult getLineList
            (@RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {

        PageDataResult pdr = new PageDataResult();
        try {
            pdr = lineService.getLineList(pageNum,pageSize);
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
    @PostMapping("setLine")
    @ResponseBody
    public Map<String,Object> setLine(LineDO lineDO) {
        logger.info("设置[变更]！lineDO:" + lineDO);
        Map<String,Object> data = new HashMap();
        if(lineDO.getId() == null){
            //新增
            data = lineService.addLine(lineDO);
        }else{
            //修改
            data = lineService.updateLine(lineDO);
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
    @GetMapping("/lineList")
    @ResponseBody
    public List<LineDO> lineList() {
        logger.info("获取列表");
        return lineService.lineList();

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
        return lineService.del(id);

    }
}
