package com.haiyu.manager.pojo.dic;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

/**
 * 控制命令对应的设备回复事件
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:24
 */
@Data
@Table(name="dic_command_event")
public class CommandEventDO implements Serializable {
	private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
	/**
	 * 控制命令名称，tag_name
	 */
	private String commandName;
	/**
	 * 控制命令值
	 */
	private String commandValue;
	/**
	 * 事件名称，tag_name
	 */
	private String eventName;
	/**
	 * 事件值
	 */
	private String eventValue;
	/**
	 * 命令响应
	 */
	private String commandDestination;
	/**
	 * 命令来源
	 */
	private String commandSource;
    /**
     * 逻辑删除
     */
	private Integer logicDelete;
    /**
     * 地标
     */
    @Column(name = "land_mark")
    private String landMark;
}
