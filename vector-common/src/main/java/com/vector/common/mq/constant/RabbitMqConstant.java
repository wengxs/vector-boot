package com.vector.common.mq.constant;

public interface RabbitMqConstant {

    String EXCHANGE = "vector";

    String QUEUE_PURCHASE = "purchase.queue";

    String QUEUE_WAREHOUSE = "warehouse.queue";

    String EXCHANGE_ERROR = "vector_error";

    String QUEUE_ERROR = "error.queue";

    String ROUTING_KEY_ERROR = "error";
}
