package com.ssm.model;

public class BJslx {
    private Integer jslxid;

    private String jslxmc;

    public Integer getJslxid() {
        return jslxid;
    }

    public void setJslxid(Integer jslxid) {
        this.jslxid = jslxid;
    }

    public String getJslxmc() {
        return jslxmc;
    }

    public void setJslxmc(String jslxmc) {
        this.jslxmc = jslxmc == null ? null : jslxmc.trim();
    }
}