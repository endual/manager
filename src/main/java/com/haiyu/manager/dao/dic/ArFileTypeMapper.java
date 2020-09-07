package com.haiyu.manager.dao.dic;


import com.haiyu.manager.pojo.dic.ArFileTypeDO;
import org.springframework.stereotype.Repository;
import tk.mapper.MyMapper;

@Repository
public interface ArFileTypeMapper extends MyMapper<ArFileTypeDO> {

    int updateArFileType(ArFileTypeDO arFileTypeDO);

}