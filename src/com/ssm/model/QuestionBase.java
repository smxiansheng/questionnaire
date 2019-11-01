package com.ssm.model;

import java.util.List;


/**
 * 调查表的实体类：
 * 包括：基础信息、
 * @author Demons°
 *
 */
public class QuestionBase {
	
	public AWjxx awjxx; //基础信息
	public ASctrcc asctrcc;//投入产出表
	
	public List<AXsqdjg> aXsqdjgList;//销售渠道及价格表
	
	public List<AJsxqgg> aJsxqggList;//技术研发推广需求及评价
	
	public AZgwt azgwt;//主观问题表

	public AWjxx getAwjxx() {
		return awjxx;
	}
	public void setAwjxx(AWjxx awjxx) {
		this.awjxx = awjxx;
	}
	public ASctrcc getAsctrcc() {
		return asctrcc;
	}
	public void setAsctrcc(ASctrcc asctrcc) {
		this.asctrcc = asctrcc;
	}
	public List<AXsqdjg> getaXsqdjgList() {
		return aXsqdjgList;
	}
	public void setaXsqdjgList(List<AXsqdjg> aXsqdjgList) {
		this.aXsqdjgList = aXsqdjgList;
	}
	public List<AJsxqgg> getaJsxqggList() {
		return aJsxqggList;
	}
	public void setaJsxqggList(List<AJsxqgg> aJsxqggList) {
		this.aJsxqggList = aJsxqggList;
	}
	public AZgwt getAzgwt() {
		return azgwt;
	}
	public void setAzgwt(AZgwt azgwt) {
		this.azgwt = azgwt;
	}

}
