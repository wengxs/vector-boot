package com.vector.common.mq.config;

import com.vector.common.mq.constant.RabbitMqConstant;
import org.springframework.amqp.core.Binding;
import org.springframework.amqp.core.BindingBuilder;
import org.springframework.amqp.core.DirectExchange;
import org.springframework.amqp.core.Queue;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.amqp.rabbit.retry.MessageRecoverer;
import org.springframework.amqp.rabbit.retry.RepublishMessageRecoverer;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
//该注解是当某个属性，满足条件时生效（当开启超时重试机制时生效）
@ConditionalOnProperty(prefix = "spring.rabbitmq.listener.simple.retry", name = "enabled", havingValue = "true")
public class RabbitMqRetryConfig {

    @Bean
    public DirectExchange errorExchange(){
        return new DirectExchange(RabbitMqConstant.EXCHANGE_ERROR);
    }

    @Bean
    public Queue errorQueue(){
        return new Queue(RabbitMqConstant.QUEUE_ERROR);
    }

    @Bean
    public Binding errorBinding(Queue errorQueue , DirectExchange errorExchange){
        return BindingBuilder.bind(errorQueue).to(errorExchange).with(RabbitMqConstant.ROUTING_KEY_ERROR);
    }

    @Bean
    public MessageRecoverer messageRecoverer(RabbitTemplate rabbitTemplate){
        return new RepublishMessageRecoverer(rabbitTemplate,
                RabbitMqConstant.EXCHANGE_ERROR, RabbitMqConstant.ROUTING_KEY_ERROR);
    }
}
