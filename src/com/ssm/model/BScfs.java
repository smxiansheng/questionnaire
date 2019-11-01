package com.ssm.model;

public class BScfs {
    private Integer scfsid;

    private String scfsmc;

    public Integer getScfsid() {
        return scfsid;
    }

    public void setScfsid(Integer scfsid) {
        this.scfsid = scfsid;
    }

    public String getScfsmc() {
        return scfsmc;
    }

    public void setScfsmc(String scfsmc) {
        this.scfsmc = scfsmc == null ? null : scfsmc.trim();
    }
}