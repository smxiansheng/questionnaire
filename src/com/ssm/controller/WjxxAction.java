package com.ssm.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.model.AJsxqgg;
import com.ssm.model.ASctrcc;
import com.ssm.model.AWjxx;
import com.ssm.model.AXsqdjg;
import com.ssm.model.AYhb;
import com.ssm.model.QuestionBase;
import com.ssm.service.WjxxService;
import com.ssm.vo.SearchProductVo;
import com.ssm.vo.WjxxAllVo;
import com.ssm.vo.searchTechVo;

@Controller
public class WjxxAction {
	@Resource
	private WjxxService wjxxService;
	
	/**
	 * 调查表信息的保存与更新
	 * @param request
	 * @param questionBase
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/wjxxAdd.do")
	public Boolean addOrUpdate(HttpServletRequest request,@RequestBody QuestionBase questionBase
			,HttpSession httpSession) {
		
		if(questionBase.awjxx.getaWjid()==null||questionBase.awjxx.getaWjid()==""){

			//根据session获取当前登录用户
			AYhb loginUser =(AYhb) httpSession.getAttribute("currentYhb");
			
			UUID uid = UUID.randomUUID();
			String uuid = uid.toString();
			//基础信息表---调查人id(modified 2018-7-1)
			questionBase.awjxx.setaDcrid(loginUser.getaDcrid());
			//基础信息表赋值wjid
			questionBase.awjxx.setaWjid(uuid);
			//投入产出表赋值wjid
			questionBase.asctrcc.setaWjid(uuid);
			UUID dataId = UUID.randomUUID();
			String dtId = dataId.toString();
			questionBase.asctrcc.setaTrccid(dtId);
			//销售渠道及销售价格
					for (AXsqdjg aWjid : questionBase.aXsqdjgList) {
						aWjid.setaWjid(uuid);
						//每循环一次设置一次id，保证主键不重复
						UUID uid1 = UUID.randomUUID();
						String uuid1 = uid1.toString();
						aWjid.setaXsqdid(uuid1);
					}
					//技术研发推广需求及评价
					for (AJsxqgg aWjid : questionBase.aJsxqggList) {
						aWjid.setaWjid(uuid);
						//每循环一次设置一次id，保证主键不重复
						UUID uid2 = UUID.randomUUID();
						String uuid2 = uid2.toString();
						aWjid.setaJsxqggid(uuid2);
					}
					//主观问题表赋值wjid
					questionBase.azgwt.setaWjid(uuid);
					UUID zgId = UUID.randomUUID();
					String zgwtid = zgId.toString();
					questionBase.azgwt.setaZgwtid(zgwtid);
		}
		
		
			
		
		
		
		//投入产出表合计计算
		//1.每亩物质与服务费用
		
		ASctrcc comm = questionBase.asctrcc;
		Double onehj = Double.parseDouble(comm.getaOneheji());
		Double zz = 0.0;
		Double fl = 0.0;
		Double ny = 0.0;
		Double nm = 0.0;
		Double jx = 0.0;
		Double gg = 0.0;
		Double js = 0.0;
		Double bx = 0.0;
		Double qt = 0.0;
		if(comm.getaZzf() != null&&comm.getaZzf() != ""){
			 zz = Double.parseDouble(comm.getaZzf());
		}
		if(comm.getaHff() != null&&comm.getaHff() != ""){
			 fl = Double.parseDouble(comm.getaHff());
		}
		if(comm.getaNyf() != null&&comm.getaNyf() != ""){
			 ny = Double.parseDouble(comm.getaNyf());
		}
		if(comm.getaNmf() != null&&comm.getaNmf() != ""){
			 nm = Double.parseDouble(comm.getaNmf());
		}
		if(comm.getaJxzyf() != null&&comm.getaJxzyf() != ""){
			 jx = Double.parseDouble(comm.getaJxzyf());
		}
		if(comm.getaPgf() != null&&comm.getaPgf() != ""){
			 gg = Double.parseDouble(comm.getaPgf());
		}
		if(comm.getaJsfff() != null&&comm.getaJsfff() != ""){
			 js = Double.parseDouble(comm.getaJsfff());
		}
		if(comm.getaBxf() != null&&comm.getaBxf() != ""){
			 bx = Double.parseDouble(comm.getaBxf());
		}
		if(comm.getaQtzjfy() != null&&comm.getaQtzjfy() != ""){
			 qt = Double.parseDouble(comm.getaQtzjfy());
		}
		
		onehj = zz + fl + ny + nm + jx + gg + js + bx + qt;
		String onehj1 = "";
		if(onehj != null){
			onehj1 = Double.toString(onehj);
		}
		comm.setaOneheji(onehj1);
		//2.每亩用工成本费用合计及雇工费用
		Double twohj = Double.parseDouble(comm.getaTwoheji());
		Double guf = 0.0;
		Double gut = 0.0;
		Double gur = 0.0;
		Double gug = 0.0;
		
		if(comm.getaGgfy() != null&&comm.getaGgfy() != ""){
			 guf = Double.parseDouble(comm.getaGgfy());
		}
		if(comm.getaGgts() != null&&comm.getaGgts() != ""){
			gut = Double.parseDouble(comm.getaGgts());
		}
		 if(comm.getaGgrs() != null&&comm.getaGgrs() != ""){
			 gur = Double.parseDouble(comm.getaGgrs());
		 }
		if(comm.getaGggj() != null&&comm.getaGggj() != ""){
			gug = Double.parseDouble(comm.getaGggj());
		}
		 
		guf = gut * gur * gug;
		twohj = guf;
		String guf1 = Double.toString(guf);
		String twohj1 = Double.toString(twohj);
		comm.setaGgfy(guf1);
		comm.setaTwoheji(twohj1);
		//3.每亩土地成本合计
		Double threehj = Double.parseDouble(comm.getaThreeheji());
		Double lzd = 0.0;
		Double zyd = 0.0;
		if(comm.getaLzdzj() != null&&comm.getaLzdzj() != ""){
			lzd = Double.parseDouble(comm.getaLzdzj());
		}
		 if(comm.getaZydzz() !=null&&comm.getaZydzz() != ""){
			 zyd = Double.parseDouble(comm.getaZydzz());
		 }
		 
		threehj = lzd + zyd;
		String threehj1 = Double.toString(threehj);
		comm.setaThreeheji(threehj1);
		
		
		
		
		// 保存基础信息表+生产投入产出表
		Boolean result = wjxxService.addOrUpdata(questionBase);
		

		return result;
	}
	/**
	 * 问卷列表被访者信息的查询及修改
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/wjxxSelect.do")
	public List<QuestionBase> query(){
		
		List<QuestionBase> arrayList = new ArrayList<QuestionBase>();
		QuestionBase result = wjxxService.query();
		arrayList.add(result);
		return arrayList;
		
	}
	

	
	@RequestMapping("/selectBySomeInfo.do")
	@ResponseBody
	public  List<AWjxx> selectBySomeInfo(HttpServletRequest request,String province,String  year,String type,String bigType) throws UnsupportedEncodingException{

		List<AWjxx> arrayList = new ArrayList<AWjxx>();
		AWjxx info = new AWjxx();
		province=new String(province.getBytes("iso8859-1"),"utf-8");
		type = new String(type.getBytes("iso8859-1"),"utf-8");
		info.setaSclx(type);
		info.setaSf(province);
		bigType = new String(bigType.getBytes("iso8859-1"),"utf-8");
		info.setaBigtype(bigType);
		if (year==null) year="";
		info.setaCreateTime(year);
		try{
			arrayList = wjxxService.selectBySomeInfo(info);
		}
		catch(Exception e){
			arrayList = null;
		}
		return arrayList;
	}
	
	
	
	@RequestMapping("/searchProducts.do")
	@ResponseBody
	public  List<SearchProductVo> searchProducts(HttpServletRequest request,String province,String  year,String type,String bigType) throws UnsupportedEncodingException{

		List<SearchProductVo> arrayList = new ArrayList<SearchProductVo>();
		AWjxx info = new AWjxx();
		province=new String(province.getBytes("iso8859-1"),"utf-8");
		type = new String(type.getBytes("iso8859-1"),"utf-8");
		info.setaSclx(type);
		info.setaSf(province);
		bigType = new String(bigType.getBytes("iso8859-1"),"utf-8");
		info.setaBigtype(bigType);
		if (year==null) year="";
		info.setaCreateTime(year);
		try{
			arrayList = wjxxService.searchProducts(info);
		}
		catch(Exception e){
			arrayList = null;
		}
		return arrayList;
	}
	
	@RequestMapping("/searchTech.do")
	@ResponseBody
	public  List<searchTechVo> searchTech(HttpServletRequest request,String province,String  year,String type,String bigType) throws UnsupportedEncodingException{

		List<searchTechVo> arrayList = new ArrayList<searchTechVo>();
		AWjxx info = new AWjxx();
		province=new String(province.getBytes("iso8859-1"),"utf-8");
		type = new String(type.getBytes("iso8859-1"),"utf-8");
		info.setaSclx(type);
		info.setaSf(province);
		bigType = new String(bigType.getBytes("iso8859-1"),"utf-8");
		info.setaBigtype(bigType);
		if (year==null) year="";
		info.setaCreateTime(year);
		try{
			arrayList = wjxxService.searchTech(info);
		}
		catch(Exception e){
			arrayList = null;
		}
		return arrayList;
	}

	//修改问卷信息
	//1.根据问卷id查询该问卷的全部信息
	//2.将获取的信息赋值到页面
	//根据id修改问卷列表
    @ResponseBody
    @RequestMapping("/selectForUpdate.do")
    public WjxxAllVo  selectForUpdate(HttpServletResponse response,String aWjid) {
   	   //1.首先查询基础信息类
    	WjxxAllVo wjxxAllVo = wjxxService.selectForUpdate(aWjid);
    	//System.out.println(wjxxAllVo.getaJsxqgg().getaXjspj());
   	    return  wjxxAllVo;
   	 }
    
	
}
