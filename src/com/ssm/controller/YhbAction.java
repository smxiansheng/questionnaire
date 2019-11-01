package com.ssm.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.model.AYhb;
import com.ssm.model.CBumen;
import com.ssm.model.Yhb;
import com.ssm.service.CbumenService;
import com.ssm.service.YhbService;
import com.ssm.vo.CbumenSelectVo;

@Controller
public class YhbAction {
  @Resource
  private YhbService yhbService;
  @Resource
  private CbumenService cbumenService;
  //登录
  @ResponseBody 
  @RequestMapping("/login.do")
  public String login(AYhb ayhb,HttpServletRequest request){
	 System.out.println(ayhb.getaKl()+":"+ayhb.getaXm());
	 
	 AYhb resultYhb=yhbService.login(ayhb);
	  if(resultYhb==null){
		  request.setAttribute("yhb", ayhb);
		  request.setAttribute("errorMsg", "用户名或者密码错误!");
		  return "error";// "redirect:jsp/index.jsp";
	  }else{
		  HttpSession session=request.getSession();
		  session.setAttribute("currentYhb", resultYhb);
		  return "success";//"redirect:jsp/enter.jsp";
	  }
  }
  
  
  //用户的搜索
  @ResponseBody 
  @RequestMapping("/usersSelect.do")
  public List<AYhb> UsersSelect(AYhb ayhb,HttpServletRequest request,HttpSession httpSession ){
	  List<AYhb> yhbList=new ArrayList<AYhb>();
	  AYhb aYhbsAYhb =(AYhb) httpSession.getAttribute("currentYhb");
	  if(aYhbsAYhb!=null){
		  ayhb.setaBumenid(aYhbsAYhb.getaBumenid());
		  ayhb.setaRoot(aYhbsAYhb.getaRoot());
	  }
		  
	  yhbList=yhbService.UsersSelectList(ayhb);
	 // request.setAttribute("Yhblist",yhbList);
	return yhbList;
	  
  }
  //根据用户id搜索
  @ResponseBody 
  @RequestMapping("/usersSelectid.do")
  public List<AYhb> UsersSelectid(Yhb yhb,HttpServletRequest request){
	  List<AYhb> yhbList=new ArrayList<AYhb>();
	  yhbList=yhbService.UsersSelectListid(yhb);
	 // request.setAttribute("Yhblist",yhbList);
	return yhbList;
	  
  }
  
  //用户增加
  @ResponseBody 
  @RequestMapping("/usersInsert.do")
  public Boolean UsersInsert(AYhb ayhb,HttpServletRequest request){
	  UUID uuid = UUID.randomUUID();
	  String uuString= uuid.toString();
	  ayhb.setaDcrid(uuString);
	  ayhb.setaKl("111111");
	  Boolean result=yhbService.UserInsert(ayhb);
	 // request.setAttribute("Yhblist",yhbList);
	return result;
	  
  }
  //用户的删除
  @ResponseBody 
  @RequestMapping("/usersDelect.do")
  public Boolean UsersDelect(AYhb ayhb,HttpServletRequest request){
	  
	  Boolean result=false;
	
	  result=yhbService.UserDelete(ayhb);
	 
	  return result;
  }
  
  //用户修改
  @ResponseBody 
  @RequestMapping("/usersUpdata.do")
  public Boolean UsersUpdata(AYhb ayhb,HttpServletRequest request){
	  
	 Boolean result=yhbService.UserUpdata(ayhb);
	 
	return result;
  }
  
  //用户修改
  @ResponseBody 
  @RequestMapping("/usersupdatapassword.do")
  public Boolean UsersUpdataPassword(AYhb ayhb,String oldpassword, HttpServletRequest request,HttpSession httpSession ){
	 AYhb aYhbsAYhb =(AYhb) httpSession.getAttribute("currentYhb");
	 Boolean result;
   System.out.println(aYhbsAYhb.getaDcrid());
	  ayhb.setaDcrid(aYhbsAYhb.getaDcrid());
	  Boolean a=false;
	  AYhb aYhb2=new AYhb();
	  aYhb2.setaDcrid(aYhbsAYhb.getaDcrid());
	  aYhb2.setaKl(oldpassword);
			  a=yhbService.Userselect(aYhb2);
	 if(a){
		  result=yhbService.UserUpdata(ayhb);
	 }else{
		 result=false;
	 }
	 
	 
	return result;
  }
  //用户权限
  @ResponseBody 
  @RequestMapping("/selectroot.do")
  public AYhb SelectRoot(AYhb ayhb,HttpServletRequest request,HttpSession httpSession ){
	  
	  AYhb aYhbsAYhb =(AYhb) httpSession.getAttribute("currentYhb");
	 // List<AYhb> AYhbs= new ArrayList<AYhb>();
	  //AYhbs.add(aYhbsAYhb);
	return aYhbsAYhb;
  }
  //根据片 站  县 来进行搜索用户
  @ResponseBody 
  @RequestMapping("/selectByCbumen.do")
  public List<AYhb> SelectByCbumen(CbumenSelectVo cbumenSelectVo,HttpServletRequest request,HttpSession httpSession ){
	  //存放所有的用户
	  List<AYhb> resultLis=new ArrayList<AYhb>();
		//用来存放最后的所有部门的结果
		List<CBumen> bumens=new ArrayList<CBumen>();
		//用来存放搜索条件的id
		CBumen bumen=new CBumen();
		//先判断最后的搜索条件是 县 或者是站 还是片
		if(cbumenSelectVo.getXianId()!=null){
			//封装成可搜索的条件
			bumen.setId(cbumenSelectVo.getXianId());
			bumens.add(bumen);
			//搜索下面的所有的部门
			bumens=cbumenService.SelectdownBm(bumens);
			//来搜索下面的所有的用户
			resultLis = yhbService.SelectByBumen(bumens);
		}else if(cbumenSelectVo.getZhanId()!=null){
			//封装成可搜索的条件
			bumen.setId(cbumenSelectVo.getZhanId());
			bumens.add(bumen);
			//搜索下面的所有的部门
			bumens=cbumenService.SelectdownBm(bumens);
			//来搜索下面的所有的用户
			resultLis = yhbService.SelectByBumen(bumens);
			
		}else if(cbumenSelectVo.getPianId()!=null){
			//封装成可搜索的条件
			bumen.setId(cbumenSelectVo.getPianId());
			bumens.add(bumen);
			//搜索下面的所有的部门
			bumens=cbumenService.SelectdownBm(bumens);
			//来搜索下面的所有的用户
			resultLis = yhbService.SelectByBumen(bumens);
		}
		  
	return resultLis;
  }
}
