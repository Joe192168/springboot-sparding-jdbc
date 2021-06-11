package com.joe.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;

import java.time.LocalDateTime;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 *
 * </p>
 *
 * @author joe
 * @since 2021-03-25
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("t_config")
public class TConfig extends Model {

    private static final long serialVersionUID = 1L;
    @TableId(value = "id")
    private Long id;

    private String remark;

    private LocalDateTime createTime;

    private LocalDateTime lastModifyTime;


}
