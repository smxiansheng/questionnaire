package com.ssm.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.model.AYhb;
import com.ssm.model.CSfxjcxx;
import com.ssm.model.ModelCounty;
import com.ssm.service.DemonstrationXian;
import com.ssm.service.ModelCountyService;
import com.ssm.service.YhbService;
import com.ssm.vo.CSfxjcxxVo;


@Controller
public class DemonstrationXianAction {
	
	@Resource
	  private DemonstrationXian demonstrationxian;
	 @Resource
	  private YhbService yhbService;	
	 @Resource
		private ModelCountyService modelCountyService;
	
	//查询所有示范县
	 @ResponseBody
     @RequestMapping("/searchDemonstrationXian.do")
     public List<CSfxjcxx> searchDemonstrationXian(HttpServletResponse response,HttpSession httpSession){
		 AYhb aYhbsAYhb =(AYhb) httpSession.getAttribute("currentYhb");
		 
		 List<AYhb> userlist = yhbService.UsersSelectList(aYhbsAYhb);
		 List<CSfxjcxx> list =new ArrayList<CSfxjcxx>();
		
		 if(aYhbsAYhb.getaRoot()==1){
			 aYhbsAYhb.setaXm("");
			 userlist = yhbService.UsersSelectList(aYhbsAYhb);
		 }
		 
		 if(aYhbsAYhb.getaRoot()==2){
			 userlist = yhbService.UsersSelectList(aYhbsAYhb);
			 
			 //如果改站下面没有县级用户，则直接退出，不进行任何查询
			 if(userlist.size()<=0){
				 return list;
			 }
			 
		 }
		 //如果是县级用户，那么就搜索自己的示范县即可
		 if(aYhbsAYhb.getaRoot()==3){
			 userlist.add(aYhbsAYhb);
		 }
		
		 if(userlist.size()>0){
			  list=demonstrationxian.searchDemonstrationXian(userlist);
		 }
		 if(userlist.size()>0){
			  list=demonstrationxian.searchDemonstrationXian(userlist);
		 }
		
     //System.out.println(list);
     	return list;
     }
	 //根据id删除示范县
     @ResponseBody
     @RequestMapping("/deleteDemonstrationXianById.do")
     public String  deleteDemonstrationXian(HttpServletResponse response,String aSfxid) throws Exception{
    	 //调用商品的service查询所有示范县的列表
 		int result=demonstrationxian.deleteDemonstrationXianById(aSfxid);
        return ""+result;
     }
     
   //根据条件查询示范县
   	 @ResponseBody
        @RequestMapping("/searchDemonstrationXianByCondition.do")
        public List<CSfxjcxx> searchVegetablesByName(HttpServletResponse response,HttpSession httpSession,CSfxjcxx csfxjcxx){
   		 AYhb aYhbsAYhb =(AYhb) httpSession.getAttribute("currentYhb");
   		 
   		List<AYhb> userlist = new ArrayList<AYhb>();
   		List<CSfxjcxx> list = new ArrayList<CSfxjcxx>();
		 if(aYhbsAYhb.getaRoot()==1){
			 aYhbsAYhb.setaXm("");
			 userlist = yhbService.UsersSelectList(aYhbsAYhb);
		 }
		 
		 if(aYhbsAYhb.getaRoot()==2){
			 userlist = yhbService.UsersSelectList(aYhbsAYhb);
			 
			 //如果改站下面没有县级用户，则直接退出，不进行任何查询
			 if(userlist.size()<=0){
				 return list;
			 }
			 
		 }
		 //如果是县级用户，那么就搜索自己的示范县即可
		 if(aYhbsAYhb.getaRoot()==3){
			 userlist.add(aYhbsAYhb);
		 }
		 
		 
		 CSfxjcxxVo csfxjcxxVo =new CSfxjcxxVo();
		 csfxjcxxVo.setCsfxjcxx(csfxjcxx);
		 csfxjcxxVo.setUserlist(userlist);
		 
   		 list=demonstrationxian.searchDemonstrationXianByCondition(csfxjcxxVo);
     	return list;
        }
   //根据id查看示范县
   	 @ResponseBody
     @RequestMapping("/seeDemonstrationXianById.do")
     public ModelCounty  seeDemonstrationXian(HttpServletResponse response,String aSfxid){
    	ModelCounty modelCounty=  modelCountyService.select(aSfxid); 
    	 //System.out.println(aSfxid);
    	// request.setAttribute("modelCounty",modelCounty);
    	 
    	 return  modelCounty;
     }
   //根据id修改示范县
     @ResponseBody
     @RequestMapping("/reviseDemonstrationXianById.do")
     public String  reviseDemonstrationXian(HttpServletResponse response,String aSfxid) {
    	System.out.println(aSfxid);
    	 return  null;
    	 }
 
}
