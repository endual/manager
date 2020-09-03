package com.haiyu.manager.dao.dic;


import com.haiyu.manager.pojo.dic.ArFileTypeDO;
import org.springframework.stereotype.Repository;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

@Repository
public interface ArFileTypeMapper extends Mapper<ArFileTypeDO> {

    List<ArFileTypeDO> getArFileTypeList();

    int updateArFileType(ArFileTypeDO arFileTypeDO);

}