package com.haiyu.manager.pojo.dic;


import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

/**
 * 仓库类型表
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
@Data
@Table(name="DIC_WAREHOUSE_TYPE")
public class WarehouseTypeDO implements Serializable {
	private static final long serialVersionUID = 1L;
    /**
     * $column.comments
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
	/**
	 * 类型编码
	 */
	private String code;
	/**
	 * 类型名称
	 */
	private String name;
	/**
	 * 状态 0不可用，1可用
	 */
	private Integer status;
	/**
	 * 备注
	 */
	private String remark;
    /**
     * 地标
     */
    @Column(name = "land_mark")
    private String landMark;

}
