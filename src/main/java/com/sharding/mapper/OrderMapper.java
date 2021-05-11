package com.sharding.mapper;

import com.sharding.entity.Order;
import org.apache.ibatis.annotations.Param;
import tk.mybatis.mapper.common.Mapper;

/**
 * @author linzef
 * @since 2020-12-12
 * 类描述： 订单的dao
 */
public interface OrderMapper extends Mapper<Order> {

    /**
     * 功能描述： 根据用户ID来查订单数据
     *
     * @param orderId 订单流水ID
     * @return 返回查询结果
     */
    Order queryMyOrder(@Param("orderId") Long orderId);

}
