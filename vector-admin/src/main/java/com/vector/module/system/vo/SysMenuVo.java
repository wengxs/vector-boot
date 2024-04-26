package com.vector.module.system.vo;

import com.vector.module.system.entity.SysMenu;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.List;

@EqualsAndHashCode(callSuper = true)
@Data
public class SysMenuVo extends SysMenu {

    private List<SysMenuVo> children;
}
