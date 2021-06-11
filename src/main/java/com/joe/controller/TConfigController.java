package com.joe.controller;


import com.joe.entity.TConfig;
import com.joe.service.ITConfigService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author joe
 * @since 2021-03-25
 */
@RestController
@RequestMapping("/config")
public class TConfigController {

    @Autowired
    private ITConfigService configService;

    @GetMapping("/addConfig")
    public String findOrderListByPage() {
        TConfig config = new TConfig();
        config.setRemark("dsfgsdfg");
        configService.save(config);
        return "success";
    }

}
