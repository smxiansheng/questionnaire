package com.ssm.model;

public class AScpz {
    private Integer aScid;

    private String aWjid;

    private String aScmc;

    private String aScmj;

    public Integer getaScid() {
        return aScid;
    }

    public void setaScid(Integer aScid) {
        this.aScid = aScid;
    }

    public String getaWjid() {
        return aWjid;
    }

    public void setaWjid(String aWjid) {
        this.aWjid = aWjid == null ? null : aWjid.trim();
    }

    public String getaScmc() {
        return aScmc;
    }

    public void setaScmc(String aScmc) {
        this.aScmc = aScmc == null ? null : aScmc.trim();
    }

    public String getaScmj() {
        return aScmj;
    }

    public void setaScmj(String aScmj) {
        this.aScmj = aScmj == null ? null : aScmj.trim();
    }
}