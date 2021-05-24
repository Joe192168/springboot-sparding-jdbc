package com.sharding.mapper;

import com.sharding.entity.Order;
import org.apache.ibatis.annotations.Param;
import tk.mybatis.mapper.common.Mapper;

import java.util.*;

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

    /**
     * 查询所有
     * @return
     */
    List<Map<String,Object>> queryMyOrderList();

    /**
     * 查询所有
     * @return
     */
    List<Map<String,Object>> queryUserList();

}
