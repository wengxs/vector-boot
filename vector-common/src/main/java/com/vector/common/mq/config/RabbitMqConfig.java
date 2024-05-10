package com.vector.common.mq.config;

import com.vector.common.core.exception.BizException;
import com.vector.common.core.util.BizAssert;
import lombok.extern.slf4j.Slf4j;
import org.springframework.amqp.rabbit.connection.ConnectionFactory;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.amqp.support.converter.Jackson2JsonMessageConverter;
import org.springframework.amqp.support.converter.MessageConverter;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Slf4j
@Configuration
public class RabbitMqConfig {

    /**
     * 消息转换
     * @return
     */
    @Bean
    public MessageConverter messageConverter() {
        Jackson2JsonMessageConverter messageConverter = new Jackson2JsonMessageConverter();
        messageConverter.setCreateMessageIds(true);
        return messageConverter;
    }

    /**
     * 消息投递确认
     * @return
     */
    public RabbitTemplate.ConfirmCallback confirmCallback() {
        return (correlationData, ack, cause) -> {
            log.info("ConfirmCallback:correlationData: {}", correlationData);
            log.info("ConfirmCallback:ack: {}", ack);
            log.info("ConfirmCallback:cause: {}", cause);
            BizAssert.isTrue(ack, cause);
        };
    }

    /**
     * 消息路由失败时触发
     * @return
     */
    public RabbitTemplate.ReturnsCallback returnsCallback() {
        return returned -> {
            log.info("ReturnsCallback:Message: {}", returned.getMessage());
            log.info("ReturnsCallback:ReplyCode: {}", returned.getReplyCode());
            log.info("ReturnsCallback:ReplyText: {}", returned.getReplyText());
            log.info("ReturnsCallback:Exchange: {}", returned.getExchange());
            log.info("ReturnsCallback:RoutingKey: {}", returned.getRoutingKey());
            throw new BizException(returned.getReplyText());
        };
    }

    @Bean
    public RabbitTemplate rabbitTemplate(ConnectionFactory connectionFactory, MessageConverter messageConverter) {
        RabbitTemplate rabbitTemplate = new RabbitTemplate(connectionFactory);
        rabbitTemplate.setMessageConverter(messageConverter);
        rabbitTemplate.setMandatory(true);
        rabbitTemplate.setConfirmCallback(confirmCallback());
        rabbitTemplate.setReturnsCallback(returnsCallback());
        return rabbitTemplate;
    }

}
