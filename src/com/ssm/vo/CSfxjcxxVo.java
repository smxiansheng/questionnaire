package com.ssm.vo;

import java.util.List;

import com.ssm.model.AYhb;
import com.ssm.model.CSfxjcxx;


public class CSfxjcxxVo {
	CSfxjcxx csfxjcxx;
	List<AYhb> userlist;
  
 

	public CSfxjcxx getCsfxjcxx() {
		return csfxjcxx;
	}
	public void setCsfxjcxx(CSfxjcxx csfxjcxx) {
		this.csfxjcxx = csfxjcxx;
	}
	public List<AYhb> getUserlist() {
		return userlist;
	}
	public void setUserlist(List<AYhb> userlist) {
		this.userlist = userlist;
	}

}
