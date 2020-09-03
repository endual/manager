package com.haiyu.manager.service.impl;

import cn.hutool.core.bean.BeanUtil;
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

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class CardIssuerImpl implements CardIssuerService {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private CardIssuerMapper cardIssuerMapper;

    @Override
    public PageDataResult getCardIssuerList() {
        cardIssuerMapper.selectAll();
        PageDataResult pageDataResult = new PageDataResult();
        int pageNum = 0;
        int pageSize = 10;
        List<CardIssuerDO> cardIssuerList = cardIssuerMapper.selectAll();;
        PageHelper.startPage(pageNum, pageSize);
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
            CardIssuerDO ci = new CardIssuerDO();
            BeanUtil.copyProperties(cardIssuer,ci);
            cardIssuer.setCreateTime(DateUtils.getCurrentDate());
            int result = cardIssuerMapper.insert(cardIssuer);
            if(result == 0){
                data.put("code",0);
                data.put("msg","新增失败！");
                logger.error("权限[新增]，结果=新增失败！");
                return data;
            }
            data.put("code",1);
            data.put("msg","新增成功！");
            logger.info("权限[新增]，结果=新增成功！");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("权限[新增]异常！", e);
            return data;
        }
        return data;
    }

    @Override
    public Map<String, Object> updateCardIssuer(CardIssuerDO cardIssuer) {
        Map<String,Object> data = new HashMap();
        try{
            int result = cardIssuerMapper.updateCardIssuer(cardIssuer);
            if(result == 0){
                data.put("code",0);
                data.put("msg","更新失败！");
                logger.error("权限[更新]，结果=更新失败！");
                return data;
            }
            data.put("code",1);
            data.put("msg","更新成功！");
            logger.info("权限[更新]，结果=更新成功！");
        }catch (Exception e) {
            e.printStackTrace();
            logger.error("权限[更新]异常！", e);
            return data;
        }
        return data;
    }
}
