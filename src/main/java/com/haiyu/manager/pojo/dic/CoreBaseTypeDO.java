package com.haiyu.manager.pojo.dic;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

/**
 * 
 * 
 * @author lzx
 * @email sunlightcs@gmail.com
 * @date 2020-09-08 15:02:08
 */
@Data
@Table(name="dic_core_base_type")
public class CoreBaseTypeDO implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * id
	 */
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	/**
	 * 基本数据名称
	 */
	private String dataName;
	/**
	 * 基本类型
	 */
	private String dataType;
	/**
	 * 范围
	 */
	private String dataRange;
	/**
	 * 字节数
	 */
	private Integer byteCount;
	/**
	 * 创建时间
	 */
	private String createTime;
    /**
     * 地标
     */
    @Column(name = "land_mark")
    private String landMark;
	/**
	 * 描述
	 */
	private String description;
    /**
     * 逻辑删除
     */
    private Integer logicDelete;

}
