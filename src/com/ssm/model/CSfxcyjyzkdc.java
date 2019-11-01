package com.ssm.model;

public class CSfxcyjyzkdc {
    private Integer id;

    private String sfxid;

    private String cplb;

    private String jylx;

    private String nf;

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
        this.sfxid = sfxid;
    }

    public String getCplb() {
        return cplb;
    }

    public void setCplb(String cplb) {
        this.cplb = cplb == null ? null : cplb.trim();
    }

    public String getJylx() {
        return jylx;
    }

    public void setJylx(String jylx) {
        this.jylx = jylx == null ? null : jylx.trim();
    }

    public String getNf() {
        return nf;
    }

    public void setNf(String nf) {
        this.nf = nf == null ? null : nf.trim();
    }
}