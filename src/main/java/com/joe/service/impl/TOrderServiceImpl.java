package com.joe.service.impl;

import com.joe.entity.TOrder;
import com.joe.mapper.TOrderMapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.joe.service.ITOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author joe
 * @since 2021-03-25
 */
@Service
public class TOrderServiceImpl extends ServiceImpl<TOrderMapper, TOrder> implements ITOrderService {

    @Autowired
    private TOrderMapper orderMapper;

    @Override
    public List<TOrder> findOrderListByPage() {
        return orderMapper.findOrderListByPage();
    }

    @Override
    public List<Map<String, Object>> getUserOderById(Long id) {
        return orderMapper.getUserOderById(id);
    }
}
