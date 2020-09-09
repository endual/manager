package com.haiyu.manager.pojo.dic;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

/**
 * 车票有效使用范围说明
 * 
 * @author lzx
 * @email sunlightcs@gmail.com
 * @date 2020-09-08 15:02:08
 */
@Data
@Table(name="dic_area_ticket_flag")
public class AreaTicketFlagDO implements Serializable {
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
	 * 详情
	 */
	private String description;
	/**
	 * 逻辑删除 1不是 0是
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
