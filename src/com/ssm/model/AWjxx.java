package com.ssm.model;

public class AWjxx {
	/**
	 * 问卷ID
	 */
    private String aWjid;
    /**
     * 问卷编码
     */
    private String aWjbm;
    /**
     * 调查人id
     */
    private String aDcrid;
    
    
    
    //调查人的真实姓名  thomas modified 2018-7-1
    private String aDcrRealname;
  //时间搜索  zhp   添加   2018-7-3
    private String  aDcsjQi; 
    private String  aDcsjZhi;
    
    


	/**
     * 被访者姓名
     */
    private String aBfzxm;
    /**
     * 被访者联系方式
     */
    private String  aBfzlxfs;
    /**
     * 被访者年龄
     */
    private Byte aBfznl;
    /**
     * 省份
     */
    private String aSf;
	/**
	 * 市
	 */
    private String aCity;
    /**
     * 县
     */
    private String aXian;
    /**
     * 乡
     */
    private String aXiang;
    /**
     * 村
     */
    private String aCun;
    /**
     * 学历
     */
    private String aXueli;
    /**
     * 蔬菜类型
     */
    private String aSclx;
    /**
     * 是否注册品牌
     */
    private String aSfzcpp;
    /**
     * 品牌名称
     */
    private String aPpmc;
    /**
     * 是否出口
     */
    private String aSfck;
    /**
     * 经营主体类型
     */
    private String aJyztlx;
    /**
     * 职务
     */
    private String aZw;
    /**
     * 耕地面积
     */
    private String aGdmj;
    /**
     * 生产方式
     */
    private String aScfs;
    /**
     * 政策保障与金融支持
     */
    private String aZcbz;
    /**
     * 其他
     * @return
     */
    private String aQita;
    
    
    //调查时间-录入时间
    private String aCreateTime;
    
    //蔬菜大类
    private String aBigtype;
    
    //销售渠道价格表的    产品流向
    private String aProDirection;
    //销售渠道价格表的    销售时间
    private String aProSellTime;
    //销售渠道价格表的    销售价格
    private String aProPrice;
    //销售渠道价格表的    销量
    private String aProSellVolume;
    
    
    /**
     * 中文省
     */
    private String aZhprovince;
    /**
     * 中文市
     */
    private String aZhcity;
    /**
     * 中文县
     */
    private String aZhcounty;
    
    
    
    
    
    public String getaZhprovince() {
		return aZhprovince;
	}

	public void setaZhprovince(String aZhprovince) {
		this.aZhprovince = aZhprovince;
	}

	public String getaZhcity() {
		return aZhcity;
	}

	public void setaZhcity(String aZhcity) {
		this.aZhcity = aZhcity;
	}

	public String getaZhcounty() {
		return aZhcounty;
	}

	public void setaZhcounty(String aZhcounty) {
		this.aZhcounty = aZhcounty;
	}

	public String getaProDirection() {
		return aProDirection;
	}

	public void setaProDirection(String aProDirection) {
		this.aProDirection = aProDirection;
	}

	public String getaProSellTime() {
		return aProSellTime;
	}

	public void setaProSellTime(String aProSellTime) {
		this.aProSellTime = aProSellTime;
	}

	public String getaProPrice() {
		return aProPrice;
	}

	public void setaProPrice(String aProPrice) {
		this.aProPrice = aProPrice;
	}

	public String getaProSellVolume() {
		return aProSellVolume;
	}

	public void setaProSellVolume(String aProSellVolume) {
		this.aProSellVolume = aProSellVolume;
	}

	public String getaCreateTime() {
		return aCreateTime;
	}

	public void setaCreateTime(String aCreateTime) {
		this.aCreateTime = aCreateTime;
	}

	

	public String getaBigtype() {
		return aBigtype;
	}

	public void setaBigtype(String aBigtype) {
		this.aBigtype = aBigtype;
	}

	public String getaQita() {
		return aQita;
	}

	public void setaQita(String aQita) {
		this.aQita = aQita;
	}

	public String getaJyztlx() {
		return aJyztlx;
	}

	public void setaJyztlx(String aJyztlx) {
		this.aJyztlx = aJyztlx;
	}

	public String getaZw() {
		return aZw;
	}

	public void setaZw(String aZw) {
		this.aZw = aZw;
	}

	public String getaGdmj() {
		return aGdmj;
	}

	public void setaGdmj(String aGdmj) {
		this.aGdmj = aGdmj;
	}

	public String getaScfs() {
		return aScfs;
	}

	public void setaScfs(String aScfs) {
		this.aScfs = aScfs;
	}

	public String getaZcbz() {
		return aZcbz;
	}

	public void setaZcbz(String aZcbz) {
		this.aZcbz = aZcbz;
	}

    public String getaWjid() {
        return aWjid;
    }

    public void setaWjid(String aWjid) {
        this.aWjid = aWjid == null ? null : aWjid.trim();
    }

    public String getaWjbm() {
        return aWjbm;
    }

    public void setaWjbm(String aWjbm) {
        this.aWjbm = aWjbm == null ? null : aWjbm.trim();
    }

    public String getaDcrid() {
        return aDcrid;
    }

    public void setaDcrid(String aDcrid) {
        this.aDcrid = aDcrid;
    }

    public String getaBfzxm() {
        return aBfzxm;
    }

    public void setaBfzxm(String aBfzxm) {
        this.aBfzxm = aBfzxm == null ? null : aBfzxm.trim();
    }

    public String getaBfzlxfs() {
        return aBfzlxfs;
    }

    public void setaBfzlxfs(String aBfzlxfs) {
        this.aBfzlxfs = aBfzlxfs;
    }

    public Byte getaBfznl() {
        return aBfznl;
    }

    public void setaBfznl(Byte aBfznl) {
        this.aBfznl = aBfznl;
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

    public String getaXiang() {
        return aXiang;
    }

    public void setaXiang(String aXiang) {
        this.aXiang = aXiang == null ? null : aXiang.trim();
    }

    public String getaCun() {
        return aCun;
    }

    public void setaCun(String aCun) {
        this.aCun = aCun == null ? null : aCun.trim();
    }

    public String getaXueli() {
        return aXueli;
    }

    public void setaXueli(String aXueli) {
        this.aXueli = aXueli == null ? null : aXueli.trim();
    }

    public String getaSclx() {
        return aSclx;
    }

    public void setaSclx(String aSclx) {
        this.aSclx = aSclx == null ? null : aSclx.trim();
    }

    public String getaSfzcpp() {
        return aSfzcpp;
    }

    public void setaSfzcpp(String aSfzcpp) {
        this.aSfzcpp = aSfzcpp == null ? null : aSfzcpp.trim();
    }

    public String getaPpmc() {
        return aPpmc;
    }

    public void setaPpmc(String aPpmc) {
        this.aPpmc = aPpmc == null ? null : aPpmc.trim();
    }

    public String getaSfck() {
        return aSfck;
    }

    public void setaSfck(String aSfck) {
        this.aSfck = aSfck == null ? null : aSfck.trim();
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