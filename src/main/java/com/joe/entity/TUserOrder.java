package com.joe.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.time.LocalDateTime;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;
import lombok.EqualsAndHashCode;


@Data
@EqualsAndHashCode(callSuper = true)
@TableName("t_user_order")
public class TUserOrder extends Model {

    private static final long serialVersionUID = 1L;

    @TableId("user_order_id")
    private Long userOderId;

    private Long userId;

    private Long orderId;

    private LocalDateTime dateTime;

}
