package com.ssm.model;

public class AJyfx {
    private Integer aJyfxid;

    private String aWhid;

    private String aJyfx1;

    private String aJyfx2;

    private String aJyfx3;

    public Integer getaJyfxid() {
        return aJyfxid;
    }

    public void setaJyfxid(Integer aJyfxid) {
        this.aJyfxid = aJyfxid;
    }

    public String getaWhid() {
        return aWhid;
    }

    public void setaWhid(String aWhid) {
        this.aWhid = aWhid == null ? null : aWhid.trim();
    }

    public String getaJyfx1() {
        return aJyfx1;
    }

    public void setaJyfx1(String aJyfx1) {
        this.aJyfx1 = aJyfx1 == null ? null : aJyfx1.trim();
    }

    public String getaJyfx2() {
        return aJyfx2;
    }

    public void setaJyfx2(String aJyfx2) {
        this.aJyfx2 = aJyfx2 == null ? null : aJyfx2.trim();
    }

    public String getaJyfx3() {
        return aJyfx3;
    }

    public void setaJyfx3(String aJyfx3) {
        this.aJyfx3 = aJyfx3 == null ? null : aJyfx3.trim();
    }
}