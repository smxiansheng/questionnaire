package com.ssm.service;

import java.util.List;

import com.ssm.model.AWjxx;
import com.ssm.model.AYhb;
import com.ssm.model.CSfxjcxx;
import com.ssm.vo.CSfxjcxxVo;

public interface DemonstrationXian {


	List<CSfxjcxx> searchDemonstrationXian(List<AYhb> userlist);

	int deleteDemonstrationXianById(String aSfxid);

	List<CSfxjcxx> searchDemonstrationXianByCondition(CSfxjcxxVo csfxjcxxVo);

}
