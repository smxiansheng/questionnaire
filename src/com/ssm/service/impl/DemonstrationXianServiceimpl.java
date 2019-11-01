package com.ssm.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssm.dao.CSfxjcxxMapper;
import com.ssm.model.AYhb;
import com.ssm.model.CSfxjcxx;
import com.ssm.service.DemonstrationXian;
import com.ssm.vo.CSfxjcxxVo;

@Service
public class DemonstrationXianServiceimpl implements DemonstrationXian {
	 @Resource
	  private CSfxjcxxMapper csfxjcxxmapper;
	@Override
	public List<CSfxjcxx> searchDemonstrationXian(List<AYhb> userlist) {
		List<CSfxjcxx> list=csfxjcxxmapper.findAllDemonstrationXian(userlist);
		return list;
	}

	@Override
	public int deleteDemonstrationXianById(String aSfxid) {
		int deleteByPrimaryKey = csfxjcxxmapper.deleteByPrimaryKey(aSfxid);
		return deleteByPrimaryKey;
	}

	@Override
	public List<CSfxjcxx> searchDemonstrationXianByCondition(CSfxjcxxVo csfxjcxxVo) {
		List<CSfxjcxx> list=csfxjcxxmapper.searchDemonstrationXianByCondition(csfxjcxxVo);
		return list;
	}

}
