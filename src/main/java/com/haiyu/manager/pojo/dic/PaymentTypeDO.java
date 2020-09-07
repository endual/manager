package com.haiyu.manager.pojo.dic;

import lombok.Data;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * 支付类型
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
@Data
@Table(name="DIC_PAYMENT_TYPE")
public class PaymentTypeDO implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * $column.comments
	 */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
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
