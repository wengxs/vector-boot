package com.vector.module.pms.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.vector.module.pms.pojo.entity.PmsCategory;
import com.vector.module.pms.mapper.PmsCategoryMapper;
import com.vector.module.pms.service.PmsCategoryService;
import com.vector.module.pms.pojo.vo.PmsCategoryTreeVO;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

/**
 * @author wengxs
 * @date 2020/5/16 01:25
 */
@Service
public class PmsCategoryServiceImpl extends ServiceImpl<PmsCategoryMapper, PmsCategory> implements PmsCategoryService {

    @Override
    public List<PmsCategoryTreeVO> tree() {
        List<PmsCategory> list = baseMapper.selectList(new LambdaQueryWrapper<>(PmsCategory.class)
                .orderByAsc(PmsCategory::getSort)
        );
        return getChildrenTreeVO(list, 0L);
    }

    private List<PmsCategoryTreeVO> getChildrenTreeVO(List<PmsCategory> categories, Long parentId) {
        return categories.stream()
                .filter(pmsCategory -> pmsCategory.getParentId().equals(parentId))
                .map(pmsCategory -> {
                    PmsCategoryTreeVO treeVO = new PmsCategoryTreeVO();
                    treeVO.setId(pmsCategory.getId());
                    treeVO.setCreateTime(pmsCategory.getCreateTime());
                    treeVO.setCategoryName(pmsCategory.getCategoryName());
                    treeVO.setIcon(pmsCategory.getIcon());
                    treeVO.setParentId(pmsCategory.getParentId());
                    treeVO.setLevel(pmsCategory.getLevel());
                    treeVO.setSort(pmsCategory.getSort());
                    treeVO.setDisplayed(pmsCategory.getDisplayed());
                    treeVO.setChildren(getChildrenTreeVO(categories, pmsCategory.getId()));
                    return treeVO;
                }).collect(Collectors.toList());
    }
}
