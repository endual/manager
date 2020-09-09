package com.haiyu.manager.pojo.dic;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

/**
 * 日结任务类型字典表
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
@Data
@Table(name="DIC_DAILY_KNOT_TYPE")
public class DailyKnotTypeDO implements Serializable {
	private static final long serialVersionUID= 1L;

	/**
	 * 类别ID
	 */
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	/**
	 * 类别名称
	 */
	private String typeName;
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
	/**
	 * 是否保留历史数据 0|否，1|是
	 */
	private Integer hasRetention;

}
