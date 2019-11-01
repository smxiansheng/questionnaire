package com.ssm.controller;

import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ssm.model.BXl;
import com.ssm.service.StudyService;


@Controller
public class StudyAction {
	
	@Resource
	  private StudyService studyService;
	
	
	//查询所有学习
	 @ResponseBody
     @RequestMapping("/searchStudy.do")
     public List<BXl>  searchStudy(HttpServletResponse response,HttpServletRequest request) throws Exception{
    	//调用商品的service查询所有学习的列表
 		List<BXl> list=studyService.findStudy();

     	return list;
     }

 	//根据名称查询学习
	 @ResponseBody
     @RequestMapping("/searchStudyByName.do")
     public List<BXl>  searchStudyByName(HttpServletResponse response,HttpServletRequest request,String str) throws Exception{
    	//str="菜";
    	 //调用商品的service查询所有学习的列表
 		List<BXl> list=studyService.searchStudyByName(str);

     	return list;
     }
     
     //根据id删除学习
	 @ResponseBody
     @RequestMapping("/deleteStudyById.do")
     public int  deleteStudyById(HttpServletResponse response,HttpServletRequest request,int id) throws Exception{
    	 //调用商品的service查询所有学习的列表
 		int result=studyService.deleteStudyById(id);
 		  return result; 

     }
     //添加学习
     @ResponseBody
     @RequestMapping("/addStudy.do")
     public String  addStudy(HttpServletResponse response,BXl bxl){	 
       int result=studyService.addStudy(bxl);
		return ""+result;
    	 
     }
     
}
