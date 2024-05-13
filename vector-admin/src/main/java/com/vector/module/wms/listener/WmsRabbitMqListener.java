package com.vector.module.wms.listener;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.vector.common.mq.constant.RabbitMqConstant;
import com.vector.module.wms.enums.WmsReceiveStatus;
import com.vector.module.wms.pojo.dto.WmsReceiveDTO;
import com.vector.module.wms.pojo.entity.WmsReceive;
import com.vector.module.wms.service.WmsReceiveService;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.collections4.MapUtils;
import org.springframework.amqp.rabbit.annotation.Exchange;
import org.springframework.amqp.rabbit.annotation.Queue;
import org.springframework.amqp.rabbit.annotation.QueueBinding;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.amqp.support.AmqpHeaders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.Header;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.stereotype.Component;

import java.util.Map;

@Slf4j
@Component
public class WmsRabbitMqListener {

    @Autowired
    private WmsReceiveService wmsReceiveService;

    @RabbitListener(bindings = @QueueBinding(
            value = @Queue(name = RabbitMqConstant.QUEUE_WAREHOUSE, durable = "true"),
            exchange = @Exchange(name = RabbitMqConstant.EXCHANGE),
            key = {"receiveLogistics"}
    ))
    public void receiveLogistics(@Payload Map<String, Object> message,
                                  @Header(AmqpHeaders.MESSAGE_ID) String messageId) {
        log.info("messageId is {}", messageId);
        log.info("receiveLogisticsBody is '{}'", message);
        WmsReceive receive = wmsReceiveService.getOne(new LambdaQueryWrapper<>(WmsReceive.class)
                .eq(WmsReceive::getBizNo, MapUtils.getString(message, "bizNo")));
        receive.setLogisticsName(MapUtils.getString(message, "logisticsName"));
        receive.setLogisticsNo(MapUtils.getString(message, "logisticsNo"));
        receive.setReceiveStatus(WmsReceiveStatus.SENT_OUT);
        wmsReceiveService.updateById(receive);
    }

    @RabbitListener(bindings = @QueueBinding(
            value = @Queue(name = RabbitMqConstant.QUEUE_WAREHOUSE, durable = "true"),
            exchange = @Exchange(name = RabbitMqConstant.EXCHANGE),
            key = {"receiveCreate"}
    ))
    public void receiveCreate(@Payload WmsReceiveDTO message,
                              @Header(AmqpHeaders.MESSAGE_ID) String messageId) {
        log.info("messageId is {}", messageId);
        log.info("receiveCreateBody is '{}'", message);
        wmsReceiveService.create(message);
    }
}
