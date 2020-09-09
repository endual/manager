package com.haiyu.manager.pojo.dic;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

/**
 * 线路编号
线路编码是轨道交通各线路在线网中的唯一编号。每条
线路在系统中具有唯一的编码。编码用 BCD 码表示
 * 
 * @author lzx
 * @email sunlightcs@gmail.com
 * @date 2020-09-08 15:02:08
 */
@Data
@Table(name="dic_line")
public class LineDO implements Serializable {
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
	 * 逻辑删除
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
