package com.haiyu.manager.pojo.dic;


import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

/**
 * 部件信息编码维护
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
@Data
@Table(name="DIC_PART_TYPE")
public class PartTypeDO implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
	/**
	 * 编码
	 */
	private String code;
	/**
	 * 名称
	 */
	private String name;
	/**
	 * 父编码
	 */
	private String parentCode;
	/**
	 * 状态  0不可用， 1可用
	 */
	private Integer status;
	/**
	 * 备注
	 */
	private String remark;
    /**
     * 地标
     */
    @Column(name = "land_mark")
    private String landMark;
}
