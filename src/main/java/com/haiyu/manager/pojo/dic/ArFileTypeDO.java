package com.haiyu.manager.pojo.dic;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.persistence.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Table(name = "dic_ar_file_type")
public class ArFileTypeDO {
    /**
     * ID
     * strategy 设置使用数据库主键自增策略；generator 设置插入完成后，查询最后生成的 ID 填充到该属性中。
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    /**
     * 文件类型id
     */
    @Column(name = "file_type_id")
    private String fileTypeId;

    /**
     * 文件编码
     */
    @Column(name = "code")
    private String code;

    /**
     * 描述
     */
    @Column(name = "description")
    private String description;

    /**
     * 逻辑删除
     */
    @Column(name = "logic_delete")
    private Integer logicDelete;

    /**
     * 创建时间
     */
    @Column(name = "create_time")
    private String createTime;

    /**
     * 设备名称
     */
    @Column(name = "device_name")
    private String deviceName;
}