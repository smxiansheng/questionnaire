package com.ssm.model;

public class AZczc {
    private Integer aZczcid;

    private String aZczclx;

    private String aWjid;

    public Integer getaZczcid() {
        return aZczcid;
    }

    public void setaZczcid(Integer aZczcid) {
        this.aZczcid = aZczcid;
    }

    public String getaZczclx() {
        return aZczclx;
    }

    public void setaZczclx(String aZczclx) {
        this.aZczclx = aZczclx == null ? null : aZczclx.trim();
    }

    public String getaWjid() {
        return aWjid;
    }

    public void setaWjid(String aWjid) {
        this.aWjid = aWjid == null ? null : aWjid.trim();
    }
}