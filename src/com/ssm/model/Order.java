package com.ssm.model;

public class Order {
    private Integer orderId;

    private Integer itemsId;

    private Integer userId;

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public Integer getItemsId() {
        return itemsId;
    }

    public void setItemsId(Integer itemsId) {
        this.itemsId = itemsId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }
}