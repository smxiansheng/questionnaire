package com.ssm.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssm.dao.CBumenMapper;
import com.ssm.model.AYhb;
import com.ssm.model.CBumen;
import com.ssm.model.CBumenExample;
import com.ssm.model.CBumenExample.Criteria;
import com.ssm.service.CbumenService;
import com.ssm.vo.CbumenSelectVo;
@Service("CbumenService")
public class CbumenServiceImp implements CbumenService{
	@Resource
	private CBumenMapper bumenMapper;
	
	//根据id搜索部部门表

	@Override
	public List<CBumen> SelectbumenByid(CBumen cBumen) {
		// TODO Auto-generated method stub
		List<CBumen> cBumens= new ArrayList();
		
		if(cBumen.getId()==null||cBumen.getId()==0){
			cBumens=bumenMapper.selectall(cBumen);
		}else {
			cBumens.add(bumenMapper.selectByPrimaryKey(cBumen.getId()));
		}
		return cBumens;
	}
//增加部门
	@Override
	public boolean InsertBumen(CBumen cBumen) {
		// TODO Auto-generated method stub
		String name=cBumen.getBumenmingcheng();
		List<CBumen> bumens=new ArrayList<CBumen>();
		bumens=SelectbumenAll(cBumen);
		boolean result=false;
//		if(cBumen.getSuoshubumenid()==0||cBumen.){
//			cBumen.setSuoshubumenid(null);
//		}
		if(bumens.size()<=0){
			int a=bumenMapper.insertSelective(cBumen);
			if(a>=1){
				result=true;
			}
		}
		return result;
	}
		//部门的搜索
	@Override
	public List<CBumen> SelectbumenAll(CBumen cBumen) {
		// TODO Auto-generated method stub
		List<CBumen> bumens=new ArrayList<CBumen>();
		
		bumens=bumenMapper.selectname(cBumen);
		
		return bumens;
	}
	//部门根据名称搜索
	
	@Override
	public List<CBumen> SelectbumenByname(CBumen cBumen ,AYhb aYhb) {
		// TODO Auto-generated method stubselectall
		List<CBumen> result=new ArrayList<CBumen>();
		if(aYhb.getaRoot()==1){
			if(cBumen.getBumenmingcheng()==""||cBumen.getBumenmingcheng()==null){
				 result=bumenMapper.selectall(cBumen);
			}else {
				 
				 CBumenExample aBumenExample = new CBumenExample();
				 Criteria c=aBumenExample.createCriteria();
				 c.andBumenmingchengLike("%" + cBumen.getBumenmingcheng() + "%");
				 result=bumenMapper.selectByExample(aBumenExample);
			}
		}
		if(aYhb.getaRoot()==2){
			if(cBumen.getBumenmingcheng()==""||cBumen.getBumenmingcheng()==null){
				 CBumenExample aBumenExample = new CBumenExample();
				 Criteria c=aBumenExample.createCriteria();
				 //搜索所有登录用户下面的所有县级部门
				 c.andSuoshubumenidEqualTo(aYhb.getaBumenid());
				 result=bumenMapper.selectByExample(aBumenExample);
			}else {
				 
				 CBumenExample aBumenExample = new CBumenExample();
				 Criteria c=aBumenExample.createCriteria();
				 c.andSuoshubumenidEqualTo(aYhb.getaBumenid());
				 c.andBumenmingchengLike("%" + cBumen.getBumenmingcheng() + "%");
				 result=bumenMapper.selectByExample(aBumenExample);
			}
		}
		
		
		// 获取每一个所属id 的姓名
			for(int i=0;i<result.size();i++){
				if(result.get(i).getSuoshubumenid()!=null&&result.get(i).getSuoshubumenid()!=0){
					CBumen r=bumenMapper.selectByPrimaryKey(result.get(i).getSuoshubumenid());
					String shuoshuString=r.getBumenmingcheng();
					result.get(i).setSuoshubumen(shuoshuString);
				}
			}
		
	
		
		return result;
	}
	//根据id删除
	@Override
	public Boolean DelectById(CBumen cBumen) {
		boolean result=false;
		int a=bumenMapper.deleteByPrimaryKey(cBumen.getId());
		if(a>=1){
			result=true;
		}
		
		return result;
	}
	@Override
	public Boolean SelectbumenBysuoshuid(CBumen cBumen) {
		// TODO Auto-generated method stub

		 CBumenExample aBumenExample = new CBumenExample();
		 Criteria c=aBumenExample.createCriteria();
		 c.andSuoshubumenidEqualTo(cBumen.getId());
		 if(bumenMapper.selectByExample(aBumenExample).size()>0){
			 return false;
		 }
		return true;
	}
	//根据是否为空来搜索
	@Override
	public List<CBumen> selectbyn(CBumen cBumen) {
		// TODO Auto-generated method stub
		 List<CBumen> resurtBumens =new ArrayList<CBumen>();
		CBumenExample aBumenExample = new CBumenExample();
		 Criteria c=aBumenExample.createCriteria();
		 if(cBumen.getSuoshubumenid()!=null&&cBumen.getSuoshubumenid()==0){
			 //搜索出所有的片
			 c.andSuoshubumenidIsNull();
			 resurtBumens=bumenMapper.selectByExample(aBumenExample);
		 }else {
			 //搜索出一个部门下一级的所有部门
			 c.andSuoshubumenidEqualTo(cBumen.getSuoshubumenid());
			 resurtBumens=bumenMapper.selectByExample(aBumenExample);
		}
		 
		return resurtBumens;
	}
	
	
	  //根据县id来搜索所属部门的id
	@Override
	public CBumen SelectByfatheId(CBumen cBumen) {
		// TODO Auto-generated method stub
		//存现id的部门//存所属部门id
		CBumen cbumen=new CBumen();
		CBumen fCbumen=new CBumen();
		cbumen = bumenMapper.selectByPrimaryKey(cBumen.getId());
		if(cbumen!=null){
			fCbumen=bumenMapper.selectByPrimaryKey(cbumen.getSuoshubumenid());
		}
		
		return fCbumen;
	}
	
	//利用递归 来根据所传内容来进行搜索不同级别的下面的所属县
	@Override
	public List<CBumen> SelectdownBm(List<CBumen> bumens) {
		// TODO Auto-generated method stub
		//用来存放搜索出的结果然后判断下级的个数是否返回
		List<CBumen> buList=new ArrayList<CBumen>();
		for(int i=0;i<bumens.size();i++){
			//获得当前传到的每个id
			int id = bumens.get(i).getId();
			CBumenExample aBumenExample = new CBumenExample();
			 Criteria c=aBumenExample.createCriteria();
			 //来搜索所属部门id是传过来的id的部门
			 c.andSuoshubumenidEqualTo(id);
			 buList.addAll(bumenMapper.selectByExample(aBumenExample));
		}
		if(buList.size()<1){
			return bumens;
		}else{
			return SelectdownBm(buList);
		}
		
	}
	

	
}
