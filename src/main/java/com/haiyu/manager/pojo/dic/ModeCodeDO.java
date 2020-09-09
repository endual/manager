package com.haiyu.manager.pojo.dic;


import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

/**
 * 车站模式 .用于	模式通知/广播（0701）
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
@Data
@Table(name="dic_mode_code")
public class ModeCodeDO implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
	/**
	 * 定义
	 */
	private String name;
	/**
	 * 取值
	 */
	private String value;
	/**
	 * 描述
	 */
	private String description;
	/**
	 * 是否使用
	 */
	private Integer isUse;
    /**
     * 地标
     */
    @Column(name = "land_mark")
    private String landMark;
}
