package com.joe.mapper;

import com.joe.entity.TOrder;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author joe
 * @since 2021-03-25
 */
@Repository
public interface TOrderMapper extends BaseMapper<TOrder> {
    List<TOrder> findOrderListByPage();
    List<Map<String,Object>> getUserOderById(Long userId);
}
