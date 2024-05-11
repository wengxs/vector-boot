package com.vector.module.pms.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.vector.module.pms.pojo.entity.PmsCategory;
import com.vector.module.pms.pojo.vo.PmsCategoryTreeVO;

import java.util.List;

public interface PmsCategoryService extends IService<PmsCategory> {

    List<PmsCategoryTreeVO> tree();
}
