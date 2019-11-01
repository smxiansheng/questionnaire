package com.ssm.model;

import java.util.Date;

public class CSfxjcxx {
    private String aSfxid;

    private String aDcr;
    
    
  //调查人的真实姓名  zhp modified 2018-7-1
    private String aDcrRealname;
    
  //时间搜索  zhp   添加   2018-7-3
    private String  aDcsjQi; 
    private String  aDcsjZhi;
    
    
    
    
    private String aLxdh;

    private Date aDcsj;
    
    private String s_aDcsj;

    private String aZhsyzwjfzryx;

    private String aSf;

    private String aCity;

    private String aXian;
    
    private String province;
    
    private String city;
    
    private String xian;

    public String getaSfxid() {
        return aSfxid;
    }

    public void setaSfxid(String aSfxid) {
        this.aSfxid = aSfxid == null ? null : aSfxid.trim();
    }

    public String getaDcr() {
        return aDcr;
    }

    public void setaDcr(String aDcr) {
        this.aDcr = aDcr == null ? null : aDcr.trim();
    }

    public String getaLxdh() {
        return aLxdh;
    }

    public void setaLxdh(String aLxdh) {
        this.aLxdh = aLxdh == null ? null : aLxdh.trim();
    }

    public Date getaDcsj() {
        return aDcsj;
    }

    public void setaDcsj(Date aDcsj) {
        this.aDcsj = aDcsj;
    }

    public String getaZhsyzwjfzryx() {
        return aZhsyzwjfzryx;
    }

    public void setaZhsyzwjfzryx(String aZhsyzwjfzryx) {
        this.aZhsyzwjfzryx = aZhsyzwjfzryx == null ? null : aZhsyzwjfzryx.trim();
    }

    public String getaSf() {
        return aSf;
    }

    public void setaSf(String aSf) {
        this.aSf = aSf == null ? null : aSf.trim();
    }

    public String getaCity() {
        return aCity;
    }

    public void setaCity(String aCity) {
        this.aCity = aCity == null ? null : aCity.trim();
    }

    public String getaXian() {
        return aXian;
    }

    public void setaXian(String aXian) {
        this.aXian = aXian == null ? null : aXian.trim();
    }

	public String getS_aDcsj() {
		return s_aDcsj;
	}

	public void setS_aDcsj(String s_aDcsj) {
		this.s_aDcsj = s_aDcsj == null ? null : s_aDcsj.trim();
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province == null ? null : province.trim();
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city == null ? null : city.trim();
	}

	public String getXian() {
		return xian;
	}

	public void setXian(String xian) {
		this.xian = xian == null ? null : xian.trim();
	}

	public String getaDcrRealname() {
		return aDcrRealname;
	}

	public void setaDcrRealname(String aDcrRealname) {
		this.aDcrRealname = aDcrRealname;
	}

	public String getaDcsjQi() {
		return aDcsjQi;
	}

	public void setaDcsjQi(String aDcsjQi) {
		this.aDcsjQi = aDcsjQi;
	}

	public String getaDcsjZhi() {
		return aDcsjZhi;
	}

	public void setaDcsjZhi(String aDcsjZhi) {
		this.aDcsjZhi = aDcsjZhi;
	}


	
	
}