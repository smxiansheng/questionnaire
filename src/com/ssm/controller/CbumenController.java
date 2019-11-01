package com.ssm.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.model.AYhb;
import com.ssm.model.CBumen;
import com.ssm.service.CbumenService;

@Controller
public class CbumenController {
	@Resource
	private CbumenService  cbumenService;

	
	//根据用户id搜索
	  @ResponseBody 
	  @RequestMapping("/bumenSelectid.do")
	  public List<CBumen> BumenSelectid(CBumen cBumen,HttpServletRequest request,HttpSession httpSession){
		  System.out.println("123");
		  List<CBumen> CbumenList=new ArrayList<CBumen>();
		  CbumenList=cbumenService.SelectbumenByid(cBumen);
		return CbumenList;
		  
	  }
	 
	//添加用户
	  @ResponseBody 
	  @RequestMapping("/ bumenInsert.do")
	  public Boolean BumenInsert(CBumen cBumen,HttpServletRequest request,HttpSession httpSession){
		  System.out.println("123");
		  AYhb aYhbsAYhb =(AYhb) httpSession.getAttribute("currentYhb");
		  if(aYhbsAYhb.getaRoot()==2){
			  cBumen.setSuoshubumenid(aYhbsAYhb.getaBumenid());
		  }
		  Boolean result = cbumenService.InsertBumen(cBumen);
//		if(result){
//			return"ok";
//		}else {
//			return"error";
//		}
		return result;
		  
		
	  }
	//根据用户name搜索
	  @ResponseBody 
	  @RequestMapping("/bumenSelectname.do")
	  public List<CBumen> BumenSelect(CBumen cBumen,HttpServletRequest request,HttpSession httpSession){
		  System.out.println("123");
		AYhb aYhbsAYhb =(AYhb) httpSession.getAttribute("currentYhb");
		  List<CBumen> CbumenList=new ArrayList<CBumen>();
		  CbumenList=cbumenService.SelectbumenByname(cBumen,aYhbsAYhb);
		 /* //测试
		  List<CBumen> bumens=new ArrayList<CBumen>();
		  CBumen bumen=new CBumen();
		  bumen.setId(50); 
		  bumens.add(bumen);
		  List<CBumen> CbumenListtest=cbumenService.SelectdownBm(bumens);
		  List<AYhb> abc = service.SelectByBumen(CbumenListtest);*/
		return CbumenList;
		  
	  }
	//根据用户id删除信息
	  @ResponseBody 
	  @RequestMapping("/bumenDelectbyid.do")
	  public Boolean BumenDelect(CBumen cBumen,HttpServletRequest request){
		  System.out.println("123");
		  Boolean result = cbumenService.DelectById(cBumen);
		  
		return result;
		  
		
	  }
	//根据用户id搜索下级个数
	  @ResponseBody 
	  @RequestMapping("/bumenSelectparent.do")
	  public Boolean BumenSelectparent(CBumen cBumen,HttpServletRequest request){
		  System.out.println("123");
		  Boolean result;
		  result=cbumenService.SelectbumenBysuoshuid(cBumen);
		return result;
		  
	  }
	  //用户中搜索自己的部门
	  @ResponseBody 
	  @RequestMapping("/cbumenuserselect.do")
	  public List<CBumen> CbumenUserSelect(CBumen cBumen,HttpServletRequest request,HttpSession httpSession ){
		  
		 AYhb aYhbsAYhb =(AYhb) httpSession.getAttribute("currentYhb");
		 List<CBumen> cBumens= new ArrayList<CBumen>();
		 if(cBumen.getSuoshubumenid()!=null&&cBumen.getSuoshubumenid()==123456789){
			 cBumen.setSuoshubumenid(aYhbsAYhb.getaBumenid());
		 }
		 //查找所有的片
		 cBumens=cbumenService.selectbyn(cBumen);
		  //AYhbs.add(aYhbsAYhb);
		return cBumens;
	  }
	  
	  //根据县id来搜索所属部门的id
	  @ResponseBody 
	  @RequestMapping("/cbumenubyfatherid.do")
	  public CBumen CbumenuByFatherId(CBumen bumen,HttpServletRequest request,HttpSession httpSession ){
		  
		CBumen fcBumens= new CBumen();
		
		fcBumens=cbumenService.SelectByfatheId(bumen);
		  //AYhbs.add(aYhbsAYhb);
		return fcBumens;
	  }
	 
	  
	  
}
