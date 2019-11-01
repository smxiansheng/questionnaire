package com.ssm.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssm.dao.ASctrccMapper;
import com.ssm.model.ASctrcc;
import com.ssm.model.AWjxx;
import com.ssm.service.ASctrccService;
@Service("aSctrccService")
public class ASctrccServiceImp implements ASctrccService {
	@Resource
	   private ASctrccMapper aSctrccMapper;
	@Override
	public List<ASctrcc> SelectAsctrcc(ASctrcc aSctrcc) {
		// TODO Auto-generated method stub
		List<ASctrcc> aSctrccs=new ArrayList<ASctrcc>();
		if(aSctrcc.getaWjid()==null||aSctrcc.getaWjid().equals("0")){
			aSctrccs = aSctrccMapper.selectAll(aSctrcc.getaWjid());
			
		}else {
			aSctrccs = aSctrccMapper.selectByTerm(aSctrcc.getaWjid());
		}
		return aSctrccs;
	}
	@Override
	public List<ASctrcc> SelectWjxxStrcc(AWjxx aWjxx) {
		// TODO Auto-generated method stub
		List<ASctrcc> aSctrccs=new ArrayList<ASctrcc>();
		if(aWjxx.getaSclx().equals("")||aWjxx.getaSclx()==null){
			aWjxx.setaSclx(null);
		}
		aSctrccs = aSctrccMapper.selectjoinAwjxx(aWjxx);
		return aSctrccs;
	}


}
