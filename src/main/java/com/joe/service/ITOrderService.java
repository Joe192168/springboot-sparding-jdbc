package com.joe.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.joe.entity.TOrder;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author joe
 * @since 2021-03-25
 */
public interface ITOrderService extends IService<TOrder> {

    List<TOrder> findOrderListByPage();

    List<Map<String,Object>> getUserOderById(Long id);

}
