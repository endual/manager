package com.haiyu.manager.pojo.dic;

import lombok.Data;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * 操作员类型表
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
@Data
@Table(name="DIC_OPERATOR_TYPE")
public class OperatorTypeDO implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
	/**
	 * $column.comments
	 */
	private Integer operatorType;
	/**
	 * $column.comments
	 */
	private Integer code;
	/**
	 * $column.comments
	 */
	private String description;
	/**
	 * $column.comments
	 */
	private Integer logicDelete;
	/**
	 * $column.comments
	 */
	private String createTime;

}
