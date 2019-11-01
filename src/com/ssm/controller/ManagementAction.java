package com.ssm.controller;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.model.BJyztlx;
import com.ssm.model.BSclx;
import com.ssm.service.ManagementService;


@Controller
public class ManagementAction {
	
	@Resource
	  private ManagementService managementService;
	
	
	//查询所有经营主体
	 @ResponseBody
     @RequestMapping("/searchManagement.do")
     public List<BJyztlx>  searchManagement(HttpServletResponse response,HttpServletRequest request) throws Exception{
    	//调用商品的service查询所有经营主体的列表
 		List<BJyztlx> list=managementService.findManagement();

     	return list;
     }

 	//根据名称查询经营主体
	 @ResponseBody
     @RequestMapping("/searchManagementByName.do")
     public List<BJyztlx>  searchManagementByName(HttpServletResponse response,HttpServletRequest request,@RequestParam("str")String str) throws Exception{
    	//str="菜";
    	 //调用商品的service查询所有经营主体的列表
 		List<BJyztlx> list=managementService.searchManagementByName(str);
 		System.out.println(list);
     	return list;
     }

     //根据id删除经营主体
	 @ResponseBody
     @RequestMapping("/deleteManagementById.do")
     public String  deleteManagementById(HttpServletResponse response,HttpServletRequest request,int id) throws Exception{
    	 //调用商品的service查询所有经营主体的列表
 		int result=managementService.deleteManagementById(id);
 		 return ""+result;
     }
	//添加经营主体
     @ResponseBody
     @RequestMapping("/addManagement.do")
     public String  addManagement(HttpServletResponse response,BJyztlx bjyztlx){	 
       int result=managementService.addManagement(bjyztlx);
		return ""+result;
    	 
     }
}
