package com.haiyu.manager.dto;

import lombok.Data;


@Data
public class ArFileTypeDTO {
    private Integer id;

    private String fileTypeId;

    private String code;

    private String description;

    private String logicDelete;

    private String createTime;

    private String deviceName;
}
