package com.ssm.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.model.BSclx;
import com.ssm.service.VegetablesService;


@Controller
public class VegetablesAction {
	
	@Resource
	  private VegetablesService vegetablesService;
	
	
	//查询所有蔬菜
	 @ResponseBody
     @RequestMapping("/searchVegetables.do")
     public List<BSclx>  searchVegetables(HttpServletResponse response,HttpServletRequest request){
    	//调用商品的service查询所有蔬菜的列表
 		List<BSclx> list=vegetablesService.findVegetables();
 		//model.addAttribute("list", list);
 		//request.setAttribute("list", list);
 		
     	return list;
     }

 	//根据名称查询蔬菜
	 @ResponseBody
     @RequestMapping("/searchVegetablesByName.do")
     public List<BSclx> searchVegetablesByName(HttpServletResponse response,HttpServletRequest request,@RequestParam("str")String str) throws Exception{
    	//str="菜";
    	 //调用商品的service查询所有蔬菜的列表
 		List<BSclx> list=vegetablesService.searchVegetablesByName(str);
 		System.out.println(list);
     	return list;
     }
     
     //根据id删除蔬菜
     @ResponseBody
     @RequestMapping("/deleteVegetablesById.do")
     public String  deleteVegetablesById(HttpServletResponse response,int id) throws Exception{
    	 //调用商品的service查询所有蔬菜的列表
 		int result=vegetablesService.deleteVegetablesById(id);
        return ""+result;
     }
     //添加蔬菜
     @ResponseBody
     @RequestMapping("/addVegetables.do")
     public String  addVegetables(HttpServletResponse response,BSclx bsclx){	 
       int result=vegetablesService.addVegetables(bsclx);
		return ""+result;
    	 
     }
}
