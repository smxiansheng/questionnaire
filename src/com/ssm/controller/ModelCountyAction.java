package com.ssm.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;


import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import com.ssm.model.ModelCounty;

import com.ssm.service.ModelCountyService;

@Controller
public class ModelCountyAction {
	
	@Resource
	private  ModelCountyService modelCountyService;
	
	
	
	@ResponseBody
	@RequestMapping("/addmodelCounty.do")
	 public String  addmodelCounty(ModelCounty modelCounty,HttpServletRequest request){
		
		int init = 0;
		if(modelCounty.getCSfxjcxx().getaSfxid()==null||modelCounty.getCSfxjcxx().getaSfxid()==""){
	UUID uuid=UUID.randomUUID();
	String asfxid=uuid.toString().replace("-", "");
	modelCounty.getCSfxjcxx().setaSfxid(asfxid);
		modelCounty.getCSfxfz().setSfxid(asfxid);
		modelCounty.getCSfxnyyqjsqk().setSfxid(asfxid);
	
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		try {
			if(modelCounty.getCSfxjcxx().getS_aDcsj()!=""){
			Date date = sdf.parse(modelCounty.getCSfxjcxx().getS_aDcsj());
			modelCounty.getCSfxjcxx().setaDcsj(date);
			}//当调查时间不为空时
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
		
		init =modelCountyService.add(modelCounty);
	
		}else{
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			try {
				if(modelCounty.getCSfxjcxx().getS_aDcsj()!=""){
				Date date = sdf.parse(modelCounty.getCSfxjcxx().getS_aDcsj());
				modelCounty.getCSfxjcxx().setaDcsj(date);
				}//当调查时间不为空时
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			init =modelCountyService.update(modelCounty);
			
		}
		
		//return null;
		
	return ""+init;
		
	  }
	
	
	
	
}
