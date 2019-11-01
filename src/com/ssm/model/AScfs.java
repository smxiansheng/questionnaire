package com.ssm.model;

public class AScfs {
    private Integer aScfsid;

    private String aScfsmc;

    private String aWjid;

    public Integer getaScfsid() {
        return aScfsid;
    }

    public void setaScfsid(Integer aScfsid) {
        this.aScfsid = aScfsid;
    }

    public String getaScfsmc() {
        return aScfsmc;
    }

    public void setaScfsmc(String aScfsmc) {
        this.aScfsmc = aScfsmc == null ? null : aScfsmc.trim();
    }

    public String getaWjid() {
        return aWjid;
    }

    public void setaWjid(String aWjid) {
        this.aWjid = aWjid == null ? null : aWjid.trim();
    }
}