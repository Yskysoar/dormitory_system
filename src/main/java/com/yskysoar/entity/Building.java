package com.yskysoar.entity;

import lombok.Data;

import java.io.Serializable;

/**
 * @author Yskysoar
 * @createTime 2023-06-22 22:44
 * @description 寝室楼的实体类
 */

@Data
public class Building implements Serializable {
    private Integer id;
    private String name;
    private String introduction;
    private Integer adminId;
    private String adminName;
}
