package com.vector.module.common.controller;

import com.vector.common.core.result.R;
import com.vector.module.common.pojo.EnumVO;
import com.vector.module.system.enums.SysMenuPermission;
import com.vector.module.system.enums.SysMenuType;
import com.vector.module.system.enums.SysUserStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.*;

/**
 * 枚举状态
 * @author wengxs
 * @date 2024/5/12
 */
@RestController
@RequestMapping("/common/enum")
public class EnumController {

    static final Map<String, Class<? extends Enum<?>>> enums = new HashMap<>();

    static {
        enums.put("SysUserStatus", SysUserStatus.class);
        enums.put("SysMenuType", SysMenuType.class);
        enums.put("SysMenuPermission", SysMenuPermission.class);
    }

    @GetMapping("/{enumName}")
    public R<?> get(@PathVariable String enumName) {
        Class<?> clazz = enums.get(enumName);
        if (clazz == null) {
            return R.ok(Collections.emptyList());
        }
        List<EnumVO> enumVOS = new ArrayList<>();
        Enum<?>[] enumConstants = (Enum<?>[]) clazz.getEnumConstants();
        try {
            Method getDesc = clazz.getMethod("getDesc");
            for (Enum<?> enumConstant : enumConstants) {
                EnumVO enumVO = new EnumVO();
                enumVO.setValue(enumConstant.name());
                enumVO.setLabel(getDesc.invoke(enumConstant).toString());
                enumVOS.add(enumVO);
            }
        } catch (NoSuchMethodException | IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
        return R.ok(enumVOS);
    }
}
