package com.haiyu.manager.dao.dic;

import com.haiyu.manager.dto.PermissionDTO;
import com.haiyu.manager.pojo.BaseAdminPermission;
import com.haiyu.manager.pojo.dic.CardIssuerDO;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import tk.mapper.MyMapper;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

/**
 * 发卡单位字典表
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
@Repository
public interface CardIssuerMapper extends Mapper<CardIssuerDO> {
    List<CardIssuerDO> getCardIssuerList();

    int updateCardIssuer(CardIssuerDO permission);

}