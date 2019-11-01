package com.ssm.model;

public class AJyhj {
    private Integer aJyhjid;

    private String aJyhjmc;

    private String aWjid;

    public Integer getaJyhjid() {
        return aJyhjid;
    }

    public void setaJyhjid(Integer aJyhjid) {
        this.aJyhjid = aJyhjid;
    }

    public String getaJyhjmc() {
        return aJyhjmc;
    }

    public void setaJyhjmc(String aJyhjmc) {
        this.aJyhjmc = aJyhjmc == null ? null : aJyhjmc.trim();
    }

    public String getaWjid() {
        return aWjid;
    }

    public void setaWjid(String aWjid) {
        this.aWjid = aWjid == null ? null : aWjid.trim();
    }
}