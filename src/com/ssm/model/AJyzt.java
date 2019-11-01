package com.ssm.model;

public class AJyzt {
    private Integer aJyztid;

    private String aWjid;

    private String aJyztmc;

    private String aDrzw;

    public Integer getaJyztid() {
        return aJyztid;
    }

    public void setaJyztid(Integer aJyztid) {
        this.aJyztid = aJyztid;
    }

    public String getaWjid() {
        return aWjid;
    }

    public void setaWjid(String aWjid) {
        this.aWjid = aWjid == null ? null : aWjid.trim();
    }

    public String getaJyztmc() {
        return aJyztmc;
    }

    public void setaJyztmc(String aJyztmc) {
        this.aJyztmc = aJyztmc == null ? null : aJyztmc.trim();
    }

    public String getaDrzw() {
        return aDrzw;
    }

    public void setaDrzw(String aDrzw) {
        this.aDrzw = aDrzw == null ? null : aDrzw.trim();
    }
}