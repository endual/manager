package com.haiyu.manager.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haiyu.manager.common.utils.DateUtils;
import com.haiyu.manager.dao.dic.AuthorityCodeMapper;
import com.haiyu.manager.pojo.dic.AuthorityCodeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.AuthorityCodeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class AuthorityCodeServiceImpl implements AuthorityCodeService {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private AuthorityCodeMapper authorityCodeMapper;

    @Override
    public PageDataResult getAuthorityCodeList(Integer pageNum, Integer pageSize) {
        PageDataResult pageDataResult = new PageDataResult();
        PageHelper.startPage(pageNum, pageSize);
        Example example = new Example(AuthorityCodeDO.class);
        example.createCriteria().andEqualTo("logicDelete", 1);
        List<AuthorityCodeDO> list = authorityCodeMapper.selectByExample(example);
        if(list.size() != 0){
            PageInfo<AuthorityCodeDO> pageInfo = new PageInfo<>(list);
            pageDataResult.setList(list);
            pageDataResult.setTotals((int) pageInfo.getTotal());
        }

        return pageDataResult;
    }

    @Override
    public List<AuthorityCodeDO> authorityCodeList() {
        logger.info("获取列表");
        return authorityCodeMapper.selectAll();
    }

    @Override
    public Map<String, Object> addAuthorityCode(AuthorityCodeDO authorityCodeDO) {
        Map<String,Object> data = new HashMap();
        try {
            authorityCodeDO.setCreateTime(DateUtils.getCurrentDate());
            authorityCodeDO.setLogicDelete(1);
            int result = authorityCodeMapper.insert(authorityCodeDO);
            if(result == 0){
                data.put("code",0);
                data.put("msg","新增失败");
                logger.error("新增失败");
                return data;
            }
            data.put("code",1);
            data.put("msg","新增成功");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("添加！异常！", e);
        }
        return data;
    }

    @Override
    public Map<String, Object> updateAuthorityCode(AuthorityCodeDO authorityCodeDO) {
        Map<String, Object> data = new HashMap<>();
        int result = authorityCodeMapper.updateByPrimaryKey(authorityCodeDO);
        try {
            if (result ==0) {
                data.put("code",0);
                data.put("msg", "更新失败!");
                logger.error("[更新]，结果=更新失败！");
                return data;
            }
            data.put("code", 1);
            data.put("msg", "更新成功！");
            logger.info("[更新]，结果=成功！");
        } catch (Exception e){
            e.printStackTrace();
            logger.error("[更新]异常！",e);
            return data;
        }
        return data;
    }
    @Override
    public Map<String, Object> del(Integer id) {
        Map<String, Object> data = new HashMap<>();
        AuthorityCodeDO authorityCodeDO = authorityCodeMapper.selectByPrimaryKey(id);
        authorityCodeDO.setLogicDelete(0);
        try {
            int result = authorityCodeMapper.updateByPrimaryKey(authorityCodeDO);
            if (result == 0) {
                data.put("code",0);
                data.put("msg", "逻辑删除失败!");
                logger.error("逻辑删除失败");
                return data;
            }
            data.put("code", 1);
            data.put("msg", "删除成功！");
            logger.info("删除[更新]，结果=成功！");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("[更新]异常！",e);
            return data;
        }
        return data;
    }
}