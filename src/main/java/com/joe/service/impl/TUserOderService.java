package com.joe.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.joe.entity.TUserOrder;
import com.joe.mapper.TUserOderMapper;
import com.joe.service.ITUserOderService;
import org.springframework.stereotype.Service;

@Service
public class TUserOderService extends ServiceImpl<TUserOderMapper, TUserOrder> implements ITUserOderService {
}
