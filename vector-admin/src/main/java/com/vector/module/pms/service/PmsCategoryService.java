package com.vector.module.pms.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.vector.module.pms.entity.PmsCategory;
import com.vector.module.pms.vo.PmsCategoryTreeVo;

import java.util.List;

public interface PmsCategoryService extends IService<PmsCategory> {

    List<PmsCategoryTreeVo> tree();
}
