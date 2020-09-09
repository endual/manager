package com.haiyu.manager.pojo.dic;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

/**
 * ${comments}
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
@Data
@Table(name="DIC_PSGR_TYPE")
public class PsgrTypeDO implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * $column.comments
	 */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	/**
	 * $column.comments
	 */
	private String description;
	/**
	 * $column.comments
	 */
	private String transTable;

    private Integer logicDelete;/**
     * 地标
     */
    @Column(name = "land_mark")
    private String landMark;

}
