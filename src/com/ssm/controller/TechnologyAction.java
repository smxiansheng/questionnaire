package com.ssm.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.model.BJslx;
import com.ssm.model.BSclx;
import com.ssm.service.TechnologyService;


@Controller
public class TechnologyAction {
	
	@Resource
	  private TechnologyService technologyService;
	
	
	//查询所有技术
	@ResponseBody
     @RequestMapping("/searchTechnology.do")
     public List<BJslx>  searchTechnology(HttpServletResponse response,HttpServletRequest request) throws Exception{
    	//调用商品的service查询所有技术的列表
 		List<BJslx> list=technologyService.findTechnology();

     	return list;
     }

 	//根据名称查询技术
	@ResponseBody
     @RequestMapping("/searchTechnologyByName.do")
     public List<BJslx>  searchTechnologyByName(HttpServletResponse response,HttpServletRequest request,String str) throws Exception{
    	//str="菜";
    	 //调用商品的service查询所有技术的列表
 		List<BJslx> list=technologyService.searchTechnologyByName(str);
     	return list;
     }
     
     //根据id删除技术
	 @ResponseBody
     @RequestMapping("/deleteTechnologyById.do")
     public int  deleteTechnologyById(HttpServletResponse response,HttpServletRequest request,int id) throws Exception{
    	 //调用商品的service查询所有技术的列表
 		int result=technologyService.deleteTechnologyById(id);

          return result;
     }
     //添加蔬菜
     @ResponseBody
     @RequestMapping("/addTechnology.do")
     public String  addTechnology(HttpServletResponse response,BJslx bjslx){	 
       int result=technologyService.addTechnology(bjslx);
		return ""+result;
    	 
     }
     
}
