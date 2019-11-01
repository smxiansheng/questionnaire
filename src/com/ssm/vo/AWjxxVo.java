package com.ssm.vo;

import java.util.List;

import com.ssm.model.AWjxx;
import com.ssm.model.AYhb;

public class AWjxxVo {
	AWjxx  awjxx;
	List<AYhb> userlist;
	
	public AWjxx getAwjxx() {
		return awjxx;
	}
	public void setAwjxx(AWjxx awjxx) {
		this.awjxx = awjxx;
	}
	public List<AYhb> getUserlist() {
		return userlist;
	}
	public void setUserlist(List<AYhb> userlist) {
		this.userlist = userlist;
	}

}
