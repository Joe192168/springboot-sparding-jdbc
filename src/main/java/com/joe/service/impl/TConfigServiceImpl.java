package com.joe.service.impl;

import com.joe.entity.TConfig;
import com.joe.mapper.TConfigMapper;
import com.joe.service.ITConfigService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author joe
 * @since 2021-03-25
 */
@Service
public class TConfigServiceImpl extends ServiceImpl<TConfigMapper, TConfig> implements ITConfigService {

}
