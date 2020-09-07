package com.haiyu.manager.pojo.dic;


import lombok.Data;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * lc需要保留数据的表。表名。

 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
@Data
@Table(name="DIC_KEEPDATA_TABLE")
public class KeepDataTableDO implements Serializable {
	private static final long serialVersionUID = 1L;

    /**
     * $column.comments
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

	private String tableName;

    private Integer logicDelete;

}
