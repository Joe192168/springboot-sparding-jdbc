package com.sharding.controller;

import com.sharding.entity.Order;
import com.sharding.services.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
public class OrderController {

    @Autowired
    private OrderService orderService;

    @PostMapping("/save")
    public void saveOrder(@RequestBody Order order){
        orderService.saveOrder(order);
    }

    @GetMapping("/getOder")
    public Order getOrderAndItmeById(Long orderId){
        Order order = orderService.getOrderByOrderId(orderId);
        return order;
    }

}
