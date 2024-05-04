package com.vector.module.gen.util;

import com.vector.module.gen.constant.GenConstant;
import com.vector.module.gen.entity.GenTable;
import com.vector.module.gen.entity.GenTableField;
import org.apache.commons.lang3.StringUtils;
import org.apache.velocity.VelocityContext;
import org.apache.velocity.app.Velocity;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Properties;

/**
 * @author wengxs
 */
public class VelocityUtil {

    public static VelocityContext prepareContext(GenTable table, List<GenTableField> tableFields){
        String pkJavaType = GenConstant.JAVA_TYPE_LONG;
        for (GenTableField tableField : tableFields) {
            if (tableField.getIsPk()) {
                pkJavaType = tableField.getJavaType();
                break;
            }
        }

        VelocityContext velocityContext = new VelocityContext();
        velocityContext.put("tableName", table.getTbName());
        velocityContext.put("tableComment", table.getTbComment());
        velocityContext.put("ClassName", table.getClassName());
        velocityContext.put("className", StringUtils.uncapitalize(table.getClassName()));
        velocityContext.put("packageName", table.getPackageName());
        velocityContext.put("moduleName", table.getModuleName());
        velocityContext.put("BizName", table.getBizName());
        velocityContext.put("bizName", StringUtils.uncapitalize(table.getBizName()));
        velocityContext.put("permissionPrefix",
                String.format("%s:%s:", table.getModuleName(), StringUtils.uncapitalize(table.getBizName())));
        velocityContext.put("tableFields", tableFields);
        velocityContext.put("pkJavaType", pkJavaType);
        velocityContext.put("author", table.getAuthor());
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
        velocityContext.put("date", sdf.format(new Date()));
        return velocityContext;
    }

    public static List<String> getTemplateList() {
        List<String> templates = new ArrayList<>();
        templates.add("vm/entity.java.vm");
        templates.add("vm/vo.java.vm");
        templates.add("vm/dto.java.vm");
        templates.add("vm/mapper.xml.vm");
        templates.add("vm/mapper.java.vm");
        templates.add("vm/service.java.vm");
        templates.add("vm/serviceImpl.java.vm");
        templates.add("vm/controller.java.vm");
        templates.add("vm/types.ts.vm");
        templates.add("vm/index.ts.vm");
        templates.add("vm/add-or-update.vue.vm");
        templates.add("vm/index.vue.vm");
        return templates;
    }

    public static void initVelocity() {
        Properties p = new Properties();
        try {
            // 加载classpath目录下的vm文件
            p.setProperty("file.resource.loader.class", "org.apache.velocity.runtime.resource.loader.ClasspathResourceLoader");
            // 定义字符集
            p.setProperty(Velocity.ENCODING_DEFAULT, "UTF-8");
            p.setProperty(Velocity.OUTPUT_ENCODING, "UTF-8");
            // 初始化Velocity引擎，指定配置Properties
            Velocity.init(p);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
