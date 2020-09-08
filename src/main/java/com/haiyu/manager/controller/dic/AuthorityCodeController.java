package com.haiyu.manager.controller.dic;

import com.haiyu.manager.pojo.dic.AuthorityCodeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.AuthorityCodeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * 权限代码清单
 *
 * @author lzx
 * @date 2020-09-08 14:54:44
 */
@Controller
@RequestMapping("authorityCode")
public class AuthorityCodeController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private AuthorityCodeService authorityCodeService;
    @RequestMapping("/authorityCodeManage")
    public String authorityCodeManage() {
        return "dic/authorityCodeManage";
    }

    @PostMapping("/getAuthorityCodeList")
    @ResponseBody
    public PageDataResult getAuthorityCodeList
            (@RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {

        PageDataResult pdr = new PageDataResult();
        try {
            pdr = authorityCodeService.getAuthorityCodeList(pageNum,pageSize);
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
    @PostMapping("setAuthorityCode")
    @ResponseBody
    public Map<String,Object> setAuthorityCode(AuthorityCodeDO authorityCodeDO) {
        logger.info("设置[变更]！authorityCodeDO:" + authorityCodeDO);
        Map<String,Object> data = new HashMap();
        if(authorityCodeDO.getId() == null){
            //新增
            data = authorityCodeService.addAuthorityCode(authorityCodeDO);
        }else{
            //修改
            data = authorityCodeService.updateAuthorityCode(authorityCodeDO);
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
    @GetMapping("/authorityCodeList")
    @ResponseBody
    public List<AuthorityCodeDO> authorityCodeList() {
        logger.info("获取列表");
        return authorityCodeService.authorityCodeList();

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
        return authorityCodeService.del(id);

    }
}
