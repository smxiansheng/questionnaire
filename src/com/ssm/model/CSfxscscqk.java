package com.ssm.model;

public class CSfxscscqk {
    private Integer id;

    private String nf;

    private String cplb;

    private Float zdmj;

    private Float bzmj;

    private Float zcl;

    private Float spl;

    private Float swxl;

    private Float zcz;

    private String sfxid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNf() {
        return nf;
    }

    public void setNf(String nf) {
        this.nf = nf == null ? null : nf.trim();
    }

    public String getCplb() {
        return cplb;
    }

    public void setCplb(String cplb) {
        this.cplb = cplb == null ? null : cplb.trim();
    }

    public Float getZdmj() {
        return zdmj;
    }

    public void setZdmj(Float zdmj) {
        this.zdmj = zdmj;
    }

    public Float getBzmj() {
        return bzmj;
    }

    public void setBzmj(Float bzmj) {
        this.bzmj = bzmj;
    }

    public Float getZcl() {
        return zcl;
    }

    public void setZcl(Float zcl) {
        this.zcl = zcl;
    }

    public Float getSpl() {
        return spl;
    }

    public void setSpl(Float spl) {
        this.spl = spl;
    }

    public Float getSwxl() {
        return swxl;
    }

    public void setSwxl(Float swxl) {
        this.swxl = swxl;
    }

    public Float getZcz() {
        return zcz;
    }

    public void setZcz(Float zcz) {
        this.zcz = zcz;
    }

    public String getSfxid() {
        return sfxid;
    }

    public void setSfxid(String string) {
        this.sfxid = string;
    }
}