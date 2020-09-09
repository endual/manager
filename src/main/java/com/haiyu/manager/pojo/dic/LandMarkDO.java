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
@Table(name="dic_land_mark")
public class LandMarkDO implements Serializable {
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
	 * 定义描述
	 */
	private String description;
	/**
	 * 逻辑删除 1使用 0不使用
	 */
	private Integer logicDelete;
	/**
	 * 创建时间
	 */
	private String createTime;
    /**
     * 是否使用
     */
    @Column(name = "is_use")
    private Integer isUse;
    /**
     * 更新时间
     */
    @Column(name = "update_time")
    private String updateTime;

}
