package com.haiyu.manager.pojo.dic;


import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

/**
 * 参数文件字典表
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
@Data
@Table(name="dic_eod_module")
public class EodModuleDO implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 字典ID
	 */
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	/**
	 * 组件id
	 */
	private Integer eodModuleId;
	/**
	 * 结构英文名
	 */
	private String enStructure;
	/**
	 * 结构中文名
	 */
	private String cnStructure;
	/**
	 * 循环体英文名
	 */
	private String enCirculatory;
	/**
	 * 循环体中文名
	 */
	private String cnCirculatory;
	/**
	 * 字段名称英文
	 */
	private String enField;
	/**
	 * 字段名称中文
	 */
	private String cnField;
	/**
	 * 备注
	 */
	private String remark;
	/**
	 * 逻辑删除标识 0:删除 1:未删除
	 */
	private Integer logicDelete;
	/**
	 * 创建时间
	 */
	private String createTime;
    /**
     * 地标
     */
    @Column(name = "land_mark")
    private String landMark;

}
