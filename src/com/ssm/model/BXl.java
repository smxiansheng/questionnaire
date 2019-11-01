package com.ssm.model;

public class BXl {
    private Integer aXlid;

    private String aXl;

    public Integer getaXlid() {
        return aXlid;
    }

    public void setaXlid(Integer aXlid) {
        this.aXlid = aXlid;
    }

    public String getaXl() {
        return aXl;
    }

    public void setaXl(String aXl) {
        this.aXl = aXl == null ? null : aXl.trim();
    }
}