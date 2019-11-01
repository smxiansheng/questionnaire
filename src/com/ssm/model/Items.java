package com.ssm.model;

public class Items {
    private Integer itemsId;

    private String itemsName;

    private Float itemsPrice;

    private Integer itemsNumber;

    public Integer getItemsId() {
        return itemsId;
    }

    public void setItemsId(Integer itemsId) {
        this.itemsId = itemsId;
    }

    public String getItemsName() {
        return itemsName;
    }

    public void setItemsName(String itemsName) {
        this.itemsName = itemsName == null ? null : itemsName.trim();
    }

    public Float getItemsPrice() {
        return itemsPrice;
    }

    public void setItemsPrice(Float itemsPrice) {
        this.itemsPrice = itemsPrice;
    }

    public Integer getItemsNumber() {
        return itemsNumber;
    }

    public void setItemsNumber(Integer itemsNumber) {
        this.itemsNumber = itemsNumber;
    }
}