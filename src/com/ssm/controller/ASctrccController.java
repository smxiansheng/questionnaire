package com.ssm.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.model.ASctrcc;
import com.ssm.model.AWjxx;
import com.ssm.service.ASctrccService;

@Controller
public class ASctrccController {
	@Resource
	private ASctrccService  aSctrccService;
	//根据用户id搜索
	  @ResponseBody 
	  @RequestMapping("/selectStrcc.do")
	  public List<ASctrcc> SelectStrcc(ASctrcc aSctrcc,HttpServletRequest request,HttpSession httpSession){
		  System.out.println("123");
		  List<ASctrcc> aSctrccList=new ArrayList<ASctrcc>();
		  aSctrccList=aSctrccService.SelectAsctrcc(aSctrcc);
		return aSctrccList;
		  
	  }
	  
	  @ResponseBody 
	  @RequestMapping("/selectWjxxStrcc.do")
	  public List<ASctrcc> SelectWjxxStrcc(AWjxx aWjxx,HttpServletRequest request,HttpSession httpSession){
		  System.out.println("123");
		  List<ASctrcc> aSctrccList=new ArrayList<ASctrcc>();
		  aSctrccList=aSctrccService.SelectWjxxStrcc(aWjxx);
		return aSctrccList;
		  
	  }

}
