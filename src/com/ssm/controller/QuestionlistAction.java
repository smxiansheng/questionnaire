package com.ssm.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.model.AWjxx;
import com.ssm.model.AYhb;
import com.ssm.service.Questionlist;
import com.ssm.service.YhbService;
import com.ssm.vo.AWjxxVo;



@Controller
public class QuestionlistAction {
	
	@Resource
	  private Questionlist questionlist;
	 @Resource
	  private YhbService yhbService;
	
	//查询所有问卷列表
	 @ResponseBody
     @RequestMapping("/searchQuestionlist.do")
     public List<AWjxx> searchQuestionlist(HttpServletResponse response,HttpSession httpSession){
		 AYhb aYhbsAYhb =(AYhb) httpSession.getAttribute("currentYhb");
		 List<AWjxx> list =new ArrayList<AWjxx>();
		 List<AYhb> userlist =new ArrayList<AYhb>();
		 if(aYhbsAYhb.getaRoot()==1){
			 aYhbsAYhb.setaXm("");
			 userlist = yhbService.UsersSelectList(aYhbsAYhb);
		 }else if(aYhbsAYhb.getaRoot()==2){
			  userlist = yhbService.UsersSelectList(aYhbsAYhb);
		 }else if(aYhbsAYhb.getaRoot()==3){
			 userlist.add(aYhbsAYhb);
		 }
		
		 
		 	if(userlist.size()<=0){
			 return list;
		 }
		 list=questionlist.searchQuestionlist(userlist);		 

     	      return list;
     }
	 //根据id删除问卷列表
     @ResponseBody
     @RequestMapping("/deleteQuestionlistById.do")
     public String  deleteQuestionlist(HttpServletResponse response,String aWjid) throws Exception{
    	 //调用商品的service查询所有问卷列表的列表
 		int result=questionlist.deleteQuestionlistById(aWjid);
        return ""+result;
     }
     
   //根据条件查询问卷列表
   	 @ResponseBody
        @RequestMapping("/searchQuestionlistByCondition.do")
        public List<AWjxx> searchVegetablesByName(HttpServletResponse response,HttpSession httpSession,AWjxx awjxx){
   		 AYhb aYhbsAYhb =(AYhb) httpSession.getAttribute("currentYhb");
   		 List<AWjxx> list =new ArrayList<AWjxx>();
		 List<AYhb> userlist =new ArrayList<AYhb>();
		 if(aYhbsAYhb.getaRoot()==1){
			 aYhbsAYhb.setaXm("");
			 userlist = yhbService.UsersSelectList(aYhbsAYhb);
		 }else if(aYhbsAYhb.getaRoot()==2){
			  userlist = yhbService.UsersSelectList(aYhbsAYhb);
		 }else if(aYhbsAYhb.getaRoot()==3){
			 userlist.add(aYhbsAYhb);
		 }
		
		 
		 if(userlist.size()<=0){
			 return list;
		 }
		
		 AWjxxVo awjxxvo=new AWjxxVo();
		 awjxxvo.setAwjxx(awjxx);
		 awjxxvo.setUserlist(userlist);
   		  list=questionlist.searchQuestionlistByCondition(awjxxvo);
     	return list;
        }
   //根据id查看问卷列表
     @ResponseBody
     @RequestMapping("/seeQuestionlistById.do")
     public String  seeQuestionlist(HttpServletResponse response,String aWjid){
    	
    	 System.out.println(aWjid);
    	 return  null;
     }
   
 
}
