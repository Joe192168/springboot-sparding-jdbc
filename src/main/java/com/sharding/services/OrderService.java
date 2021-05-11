package com.sharding.services;

import com.sharding.entity.OrderItem;
import com.sharding.mapper.OrderItemMapper;
import com.sharding.mapper.OrderMapper;
import com.sharding.entity.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author linzef
 * @since 2020-12-12
 * 类描述： 订单的service
 */
@Service
@Transactional(rollbackFor = {Exception.class})
public class OrderService {

    @Autowired
    private OrderMapper orderMapper;

    @Autowired
    private OrderItemMapper orderItemMapper;

    /**
     * 功能描述： 实现新增订单
     * @param order 订单的实体
     */
    public void saveOrder(Order order){
        orderMapper.insertSelective(order);
        for (OrderItem orderItem : order.getOrderItemList()) {
            orderItemMapper.insertSelective(orderItem);
        }
    }

    /**
     * 功能描述： 根据订单ID来获取订单数据
     * @param orderId 订单流水ID
     * @return 返回查询结果
     */
    public Order getOrderByOrderId(Long orderId){
        return orderMapper.queryMyOrder(orderId);
    }

}
