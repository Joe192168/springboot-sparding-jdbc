package com.joe.controller;


import com.joe.entity.TOrder;
import com.joe.mapper.TOrderMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;


/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author joe
 * @since 2021-03-23
 */
@RestController
@RequestMapping("/order")
public class TOrderController {

    @Autowired
    private TOrderMapper orderMapper;

    @GetMapping("/findOrderList")
    public List<TOrder> findOrderList(){
        List<TOrder> list = orderMapper.findOrderListByPage();
        return list;
    }

    @GetMapping("/getUserOderById/{userId}")
    public List<Map<String,Object>> getUserOderById(@PathVariable Long userId){
        List<Map<String,Object>> list = orderMapper.getUserOderById(userId);
        return list;
    }

}