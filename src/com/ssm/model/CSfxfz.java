package com.ssm.model;

public class CSfxfz {
    private Integer id;

    private String sfxid;

    private String sfxcyfz;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSfxid() {
        return sfxid;
    }

    public void setSfxid(String sfxid) {
        this.sfxid = sfxid == null ? null : sfxid.trim();
    }

    public String getSfxcyfz() {
        return sfxcyfz;
    }

    public void setSfxcyfz(String sfxcyfz) {
        this.sfxcyfz = sfxcyfz == null ? null : sfxcyfz.trim();
    }
}