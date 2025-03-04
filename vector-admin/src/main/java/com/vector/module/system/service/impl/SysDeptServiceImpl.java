package com.vector.module.system.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.vector.module.system.mapper.SysDeptMapper;
import com.vector.module.system.pojo.entity.SysDept;
import com.vector.module.system.pojo.query.SysDeptQuery;
import com.vector.module.system.pojo.vo.SysDeptTree;
import com.vector.module.system.pojo.vo.SysDeptVO;
import com.vector.module.system.service.SysDeptService;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * 部门 ServiceImpl
 * @author wengxs
 */
@Service
public class SysDeptServiceImpl extends ServiceImpl<SysDeptMapper, SysDept>
        implements SysDeptService {

    @Override
    public SysDeptVO getVOById(Long id) {
        return baseMapper.selectVOById(id);
    }

    @Override
    public IPage<SysDeptVO> pageVO(IPage<?> page, SysDeptQuery query) {
        return baseMapper.selectVOPage(page, query);
    }

    @Override
    public List<SysDeptVO> listTree() {
        List<SysDept> deptList = baseMapper.selectList(new LambdaQueryWrapper<SysDept>().orderByAsc(SysDept::getSort));
        return genTree(deptList, 0L);
    }

    private List<SysDeptVO> genTree(List<SysDept> deptList, Long parentId) {
        List<SysDeptVO> sysDeptVos = new ArrayList<>();
        deptList.stream()
                .filter(dept -> parentId.equals(dept.getParentId()))
                .forEach(dept -> {
                    SysDeptVO deptVO = new SysDeptVO();
                    BeanUtils.copyProperties(dept, deptVO);
                    deptVO.setId(dept.getId());
                    deptVO.setChildren(genTree(deptList, dept.getId()));
                    sysDeptVos.add(deptVO);
                });
        return sysDeptVos;
    }

    @Override
    public List<SysDeptTree> deptTree() {
        List<SysDept> deptList = baseMapper.selectList(new LambdaQueryWrapper<SysDept>().orderByAsc(SysDept::getSort));
        return genDeptTree(deptList, 0L);
    }

    private List<SysDeptTree> genDeptTree(List<SysDept> deptList, Long parentId) {
        List<SysDeptTree> sysDeptTree = new ArrayList<>();
        deptList.stream()
                .filter(dept -> parentId.equals(dept.getParentId()))
                .forEach(dept -> {
                    SysDeptTree deptTree = new SysDeptTree();
                    deptTree.setId(dept.getId());
                    deptTree.setDeptName(dept.getDeptName());
                    deptTree.setChildren(genDeptTree(deptList, dept.getId()));
                    sysDeptTree.add(deptTree);
                });
        return sysDeptTree;
    }

    @Override
    @Transactional
    public boolean updateById(SysDept entity) {
        SysDept newParent = baseMapper.selectById(entity.getParentId());
        SysDept oldDept = baseMapper.selectById(entity.getId());
        if (!entity.getParentId().equals(oldDept.getParentId())) {
            String newAncestors = "0";
            if (newParent != null) {
                newAncestors = newParent.getAncestors() + "," + newParent.getId();
            }
            String oldAncestors = oldDept.getAncestors();
            entity.setAncestors(newAncestors);
            updateDeptChildren(oldAncestors, newAncestors, entity.getId());
        }
        return super.updateById(entity);
    }

    /**
     * 更新下级部门的祖级
     * @param oldAncestors
     * @param newAncestors
     * @param deptId
     */
    private void updateDeptChildren(String oldAncestors, String newAncestors, Long deptId) {
        List<SysDept> children = baseMapper.selectList(new LambdaQueryWrapper<SysDept>()
                .apply("FIND_IN_SET({0}, ancestors)", deptId));
        for (SysDept child : children) {
            child.setAncestors(child.getAncestors().replaceFirst(oldAncestors, newAncestors));
            baseMapper.updateById(child);
        }
    }
}
