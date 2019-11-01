package com.ssm.model;

public class BSclx {
    private String scmc;

    private Integer scid;

    private String scsx;

    public String getScmc() {
        return scmc;
    }

    public void setScmc(String scmc) {
        this.scmc = scmc == null ? null : scmc.trim();
    }

    public Integer getScid() {
        return scid;
    }

    public void setScid(Integer scid) {
        this.scid = scid;
    }

    public String getScsx() {
        return scsx;
    }

    public void setScsx(String scsx) {
        this.scsx = scsx == null ? null : scsx.trim();
    }
}