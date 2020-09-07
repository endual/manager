package com.haiyu.manager.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haiyu.manager.common.utils.DateUtils;
import com.haiyu.manager.dao.dic.CardIssuerMapper;
import com.haiyu.manager.pojo.dic.CardIssuerDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.CardIssuerService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class CardIssuerImpl implements CardIssuerService {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private CardIssuerMapper cardIssuerMapper;

    @Override
    public PageDataResult getCardIssuerList(Integer pageNum, Integer pageSize) {
        PageDataResult pageDataResult = new PageDataResult();
        PageHelper.startPage(pageNum, pageSize);
        Example example = new Example(CardIssuerDO.class);
        example.createCriteria().andEqualTo("logicDelete", 1);
        List<CardIssuerDO> cardIssuerList = cardIssuerMapper.selectByExample(example);;
        if(cardIssuerList.size() != 0){
            PageInfo<CardIssuerDO> pageInfo = new PageInfo<>(cardIssuerList);
            pageDataResult.setList(cardIssuerList);
            pageDataResult.setTotals((int) pageInfo.getTotal());
        }
        return pageDataResult;
    }
    @Override
    public Map<String, Object> addCardIssuer(CardIssuerDO cardIssuer) {
        Map<String,Object> data = new HashMap();
        try {
            cardIssuer.setCreateTime(DateUtils.getCurrentDate());
            cardIssuer.setLogicDelete(1);
            int result = cardIssuerMapper.insert(cardIssuer);
            if(result == 0){
                data.put("code",0);
                data.put("msg","新增失败！");
                logger.error("发卡单位[新增]，结果=新增失败！");
                return data;
            }
            data.put("code",1);
            data.put("msg","新增成功！");
            logger.info("发卡单位[新增]，结果=新增成功！");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("发卡单位[新增]异常！", e);
            return data;
        }
        return data;
    }

    @Override
    public Map<String, Object> updateCardIssuer(CardIssuerDO cardIssuer) {
        Map<String,Object> data = new HashMap();
        try{
            int result = cardIssuerMapper.updateByPrimaryKey(cardIssuer);
            if(result == 0){
                data.put("code",0);
                data.put("msg","更新失败！");
                logger.error("发卡单位[更新]，结果=更新失败！");
                return data;
            }
            data.put("code",1);
            data.put("msg","更新成功！");
            logger.info("发卡单位[更新]，结果=更新成功！");
        }catch (Exception e) {
            e.printStackTrace();
            logger.error("发卡单位[更新]异常！", e);
            return data;
        }
        return data;
    }

    @Override
    public List<CardIssuerDO> cardIssuerList() {
        logger.info("获取发卡单位列表");
        return cardIssuerMapper.selectAll();
    }

    @Override
    public Map<String, Object> del(Integer id) {
        Map<String, Object> data = new HashMap<>();
        CardIssuerDO cardIssuerDO = cardIssuerMapper.selectByPrimaryKey(id);
        cardIssuerDO.setLogicDelete(0);
        try {
            int result = cardIssuerMapper.updateByPrimaryKey(cardIssuerDO);
            if (result == 0) {
                data.put("code",0);
                data.put("msg", "逻辑删除失败!");
                logger.error("逻辑删除失败");
                return data;
            }
            data.put("code", 1);
            data.put("msg", "删除成功！");
            logger.info("Ar文件类型删除[更新]，结果=成功！");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("ar文件类型[更新]异常！",e);
            return data;
        }
        return data;
    }
}
