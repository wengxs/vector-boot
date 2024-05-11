package com.vector.module.pms.pojo.vo;

import lombok.Data;

import java.util.Date;
import java.util.List;

/**
 * 分类树结构
 */
@Data
public class PmsCategoryTreeVO {

    /** 分类ID */
    private Long id;

    /**创建时间 */
    private Date createTime;

    /** 分类名称 */
    private String categoryName;

    /** 图标 */
    private String icon;

    /** 父级ID */
    private Long parentId;

    /** 层级 */
    private Integer level;

    /** 排序 */
    private Integer sort;

    /** 展示状态(0=不展示,1=展示) */
    private Boolean displayed;

    private List<PmsCategoryTreeVO> children;

}
