package com.joe;

import com.alibaba.fastjson.JSON;
import com.joe.entity.*;
import com.joe.mapper.*;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.math.BigDecimal;
import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class SpringBootAppTest {

    @Autowired
    private TOrderMapper orderMapper;
    @Autowired
    private TOrderItemMapper orderItemMapper;
    @Autowired
    private TUserMapper userMapper;
    @Autowired
    private TConfigMapper configMapper;
    @Autowired
    private TUserOderMapper tUserOderMapper;

    private static final Integer num = 100;
    private static final String orderNoPre = "JD-";

    /**
     * 测试专库专表
     */
    @Test
    public void test() {
        for (int i = 1; i <= 3; i++) {
            TUser user = new TUser();
            user.setName("用户"+i);
            user.setAge(18);
            user.setAddress("地址");
            userMapper.insert(user);
        }
        /*TUser user1 = userMapper.selectById(1376363351721992194L);
        System.err.println(user1);*/
    }

    /**
     * 测试分库分表-插入
     */
    @Test
    public void testOrderSave() {
        for (int i = 1; i <= num; i++) {
            String orderNo = orderNoPre + String.format("%04d", i);
            //订单表
            TOrder order = new TOrder();
            order.setOrderNo(orderNo);
            order.setCreateName("订单名称" + i);
            order.setPrice(new BigDecimal("" + i));
            orderMapper.insert(order);

            //订单详细表
            TOrderItem orderItem = new TOrderItem();
            Long orderId = order.getOrderId();
            orderItem.setOrderId(orderId);
            orderItem.setOrderNo(orderNo);
            orderItem.setItemName("商品名称" + i);
            orderItem.setItemDesc("商品描述" + i);
            orderItemMapper.insert(orderItem);

            //用户-订单关系表
            TUserOrder tUserOrder = new TUserOrder();
            tUserOrder.setUserId(1403297772846505986L);
            tUserOrder.setOrderId(orderId);
            tUserOderMapper.insert(tUserOrder);

        }
    }

    /**
     * 测试分库分表-查询
     */
    @Test
    public void testOrderQuery() {
        List<TOrder> orderListByPage = orderMapper.findOrderListByPage();
        System.err.println(JSON.toJSONString(orderListByPage));
    }


    /**
     * 测试公共表
     */
    @Test
    public void testConfig() {
        TConfig config = new TConfig();
        config.setRemark("bbbb");
        configMapper.insert(config);
    }

}
