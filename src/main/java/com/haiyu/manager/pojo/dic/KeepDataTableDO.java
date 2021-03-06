package com.haiyu.manager.pojo.dic;


import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

/**
 * lc需要保留数据的表。表名。

 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
@Data
@Table(name="dic_keepdata_table")
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
    /**
     * 地标
     */
    @Column(name = "land_mark")
    private String landMark;
}
