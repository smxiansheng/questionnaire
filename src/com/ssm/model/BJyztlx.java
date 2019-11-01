package com.ssm.model;

public class BJyztlx {
    private Integer jyztlxid;

    private String jyztlxmc;

    public Integer getJyztlxid() {
        return jyztlxid;
    }

    public void setJyztlxid(Integer jyztlxid) {
        this.jyztlxid = jyztlxid;
    }

    public String getJyztlxmc() {
        return jyztlxmc;
    }

    public void setJyztlxmc(String jyztlxmc) {
        this.jyztlxmc = jyztlxmc == null ? null : jyztlxmc.trim();
    }
}