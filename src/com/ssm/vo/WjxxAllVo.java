package com.ssm.vo;

import java.util.List;

import com.ssm.model.AJsxqgg;
import com.ssm.model.ASctrcc;
import com.ssm.model.AWjxx;
import com.ssm.model.AXsqdjg;
import com.ssm.model.AZgwt;

public class WjxxAllVo {
	
	//问卷信息基础表
	private AWjxx aWjxx;
	
	//问卷投入产出表
	private ASctrcc aSctrcc;
	
	//问卷销售渠道及价格表
	private AXsqdjg aXsqdjg;
	
	//问卷技术研发推广需求及评价表
	private List<AJsxqgg> aJList;
	
	//主观问题表
	private AZgwt aZgwt;

	public AWjxx getaWjxx() {
		return aWjxx;
	}

	public void setaWjxx(AWjxx aWjxx) {
		this.aWjxx = aWjxx;
	}

	public ASctrcc getaSctrcc() {
		return aSctrcc;
	}

	public void setaSctrcc(ASctrcc aSctrcc) {
		this.aSctrcc = aSctrcc;
	}

	public AXsqdjg getaXsqdjg() {
		return aXsqdjg;
	}

	public void setaXsqdjg(AXsqdjg aXsqdjg) {
		this.aXsqdjg = aXsqdjg;
	}

	public List<AJsxqgg> getaJList() {
		return aJList;
	}

	public void setaJList(List<AJsxqgg> aJList) {
		this.aJList = aJList;
	}

	public AZgwt getaZgwt() {
		return aZgwt;
	}

	public void setaZgwt(AZgwt aZgwt) {
		this.aZgwt = aZgwt;
	}

	
	

}
