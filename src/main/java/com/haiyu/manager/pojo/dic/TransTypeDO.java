package com.haiyu.manager.pojo.dic;


import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

/**
 * 交易类型字典表
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
@Data
@Table(name="DIC_TRANS_TYPE")
public class TransTypeDO implements Serializable {
	private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
	/**
	 * 设备类型
	 */
	private String deviceType;
	/**
	 * 车票交易类型
	 */
	private String ticketTransType;
	/**
	 * 交易类型编号
	 */
	private Integer transTypeNo;
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
	 * 0:无值交易;1:有值交易
	 */
	private Integer valueFlag;

}
