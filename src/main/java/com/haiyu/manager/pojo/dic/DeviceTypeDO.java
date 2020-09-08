package com.haiyu.manager.pojo.dic;

import lombok.Data;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * 设备类型，十六进制表示
 * 
 * @author lzx
 * @email sunlightcs@gmail.com
 * @date 2020-09-08 15:02:08
 */
@Data
@Table(name="dic_device_type")
public class DeviceTypeDO implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * id
	 */
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	/**
	 * 取值
	 */
	private String code;
	/**
	 * 设备简称
	 */
	private String name;
	/**
	 * 定义描述
	 */
	private String description;
	/**
	 * 逻辑删除
	 */
	private Integer logicDelete;
	/**
	 * 创建时间
	 */
	private String createTime;

}
