package com.haiyu.manager.pojo.dic;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

/**
 * 拒绝历史对应的字典表
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
@Data
@Table(name="dic_reject_ticket_type")
public class RejectTicketTypeDO implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * $column.comments
	 */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	/**
	 * 票卡交易类型描述
	 */
	private String description;
	/**
	 * 票卡对应的交易表名
	 */
	private String transTable;
    /**
     * 逻辑删除标识符
     */
    private Integer logicDelete;
    /**
     * 地标
     */
    @Column(name = "land_mark")
    private String landMark;

}
