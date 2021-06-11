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
 * @since 2021-03-26
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("t_user")
public class TUser extends Model {

    private static final long serialVersionUID = 1L;

    @TableId("id")
    private Long id;

    private String name;

    private String address;

    private Integer age;

    private LocalDateTime createTime;

    private LocalDateTime updateTime;


}
