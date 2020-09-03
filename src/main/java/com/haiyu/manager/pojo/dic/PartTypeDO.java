package com.haiyu.manager.pojo.dic;


import lombok.Data;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * 部件信息编码维护
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
@Data
@Table(name="DIC_PART_TYPE")
public class PartTypeDO implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 编码
	 */
	private String code;
	/**
	 * 名称
	 */
	private String name;
	/**
	 * 父编码
	 */
	private String parentCode;
	/**
	 * 状态  0不可用， 1可用
	 */
	private Integer status;
	/**
	 * 备注
	 */
	private String remark;

}
