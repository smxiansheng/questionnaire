package com.ssm.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssm.dao.AJsxqggMapper;
import com.ssm.dao.ASctrccMapper;
import com.ssm.dao.AWjxxMapper;
import com.ssm.dao.AXsqdjgMapper;
import com.ssm.dao.AZgwtMapper;
import com.ssm.model.AJsxqgg;
import com.ssm.model.ASctrcc;
import com.ssm.model.AWjxx;
import com.ssm.model.AXsqdjg;
import com.ssm.model.AZgwt;
import com.ssm.model.QuestionBase;
import com.ssm.service.WjxxService;
import com.ssm.vo.SearchProductVo;
import com.ssm.vo.WjxxAllVo;
import com.ssm.vo.searchTechVo;

@Service()
public class WjxxServiceImpl implements WjxxService {
	@Resource
	private AWjxxMapper awjxxMapper;
	@Resource
	private ASctrccMapper asctrccMapper;
	@Resource
	private AXsqdjgMapper axsqdjgMapper;
	@Resource
	private AJsxqggMapper ajxsqggMapper;
	@Resource
	private AZgwtMapper azgwtMapper;
	//保存2个表的信息：基础信息表，投入产生
	
	@Override
	public Boolean addOrUpdata(QuestionBase questionBase) {
		

		//调查表的主表id
		String queId = questionBase.awjxx.getaWjid(); 
		
		//1.基础表
		List<AWjxx> awjxxs = new ArrayList<AWjxx>();
		awjxxs = awjxxMapper.selectByPrimaryKey(queId);
		
		if (awjxxs.size() == 0) {
			awjxxMapper.insert(questionBase.awjxx);
		} else {
			awjxxMapper.updateByPrimaryKey(questionBase.awjxx);
		}
		
		//2.投入产出
		List<ASctrcc> asctrccs = new ArrayList<ASctrcc>();
		
		//根据问卷id搜索出数据
		asctrccs = asctrccMapper.selectByTerm(queId);

		if (asctrccs.size() <= 0) {
			asctrccMapper.insert(questionBase.asctrcc);
		} else {
			//将搜出来的数据的id赋给要更新的数据
			String asctrrcId = asctrccs.get(0).getaTrccid();
			questionBase.asctrcc.setaTrccid(asctrrcId);
			asctrccMapper.updateByPrimaryKey(questionBase.asctrcc);
		}
		
		//3.销售渠道及价格
		List<AXsqdjg> axsqdjg = new ArrayList<AXsqdjg>();
		axsqdjg = axsqdjgMapper.selectByTerm(queId);
		
		if(axsqdjg.size() <= 0){
			
			for (AXsqdjg aWjid : questionBase.aXsqdjgList) {
				/*if(aWjid.getaXssj().isEmpty()&&aWjid.getaXsjg().isEmpty()&&aWjid.getaXsl().isEmpty()){
					
				}else{*/
					axsqdjgMapper.insert(aWjid);
				//}
			}
			
		} else {
			for (AXsqdjg aWjid : questionBase.aXsqdjgList) {
				axsqdjgMapper.updateByTerm(aWjid);
			}
			
		}
		
		//4.技术推广需求及评价
		List<AJsxqgg> ajsxqgg = new ArrayList<AJsxqgg>();
		ajsxqgg = ajxsqggMapper.selectByTerm(queId);
		if(ajsxqgg.size() <= 0){
			for (AJsxqgg aWjid : questionBase.aJsxqggList) {
				/*if(aWjid.getaXjspj().isEmpty()&&aWjid.getaXyjspj().isEmpty()){
					
				}else{
					ajxsqggMapper.insert(aWjid);
				}*/
				ajxsqggMapper.insert(aWjid);
			}
		}else{
			for(int i = 0;i < 9;i ++){
				String ajsxqggId = ajsxqgg.get(i).getaJsxqggid();
				questionBase.aJsxqggList.get(i).setaJsxqggid(ajsxqggId);
				for (AJsxqgg aWjid : questionBase.aJsxqggList) {
					ajxsqggMapper.updateByPrimaryKey(aWjid);
				}
			}
			
		}
		
		//5.主观问题表
		List<AZgwt> azgwt = new ArrayList<AZgwt>();
		azgwt = azgwtMapper.selectByTerm(queId);
		String agwtId = azgwt.get(0).getaZgwtid();
		questionBase.azgwt.setaZgwtid(agwtId);
		if(azgwt.size() <= 0){
			azgwtMapper.insert(questionBase.azgwt);
		}else{
			azgwtMapper.updateByPrimaryKey(questionBase.azgwt);
		}
		

		return false;
	}
	
	@Override
	public QuestionBase query() {
		List<AWjxx> awjxxs = new ArrayList<AWjxx>();
		awjxxs = awjxxMapper.select();
		return null;
	}


	@Override
	public List<AWjxx> insert(AWjxx Awjxx) {
		// TODO Auto-generated method stub
		return null;
	}

	
	@Override
	public Boolean addOrUpdata(AWjxx Awjxx) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<AWjxx> selectBySomeInfo(AWjxx Awjxx) {
		
		List<AWjxx> awjxxs = new ArrayList<AWjxx>();
		awjxxs = awjxxMapper.selectBySomeInfo(Awjxx);
		return awjxxs;
	}

	/**
	 * zt 
	 * 主要产品销售渠道及价格查询
	 */
	@Override
	public List<SearchProductVo> searchProducts(AWjxx awjxx) {
		List<SearchProductVo> awjxxs = new ArrayList<SearchProductVo>();
		awjxxs = awjxxMapper.searchProducts(awjxx);
		return awjxxs;
	}
	   /**
		 * zt
		 * 技术需求与技术供给情况查询
		 */   
	@Override
	public List<searchTechVo> searchTech(AWjxx awjxx) {
		List<searchTechVo> awjxxs = new ArrayList<searchTechVo>();
		awjxxs = awjxxMapper.searchTech(awjxx);
		return awjxxs;
	}
	
	 /**
	    * john added 2018-7-1 根据问卷id查询全部问卷信息 
	    * @param aWjid
	    * @return
	    */
	   @Override
	   public WjxxAllVo selectForUpdate(String aWjid){
		   
		   WjxxAllVo wjxxAllVo = new WjxxAllVo();
		   
		   //1.查询基础信息
		   List<AWjxx> aWjxxList = awjxxMapper.selectByPrimaryKey(aWjid);
		   
		   if (aWjxxList!=null&&aWjxxList.size()>0){
			   wjxxAllVo.setaWjxx(aWjxxList.get(0));
		   }

		   //2.查询投入产出
		   List<ASctrcc> aSctrccList = asctrccMapper.selectForUpdata(aWjid);
		   
		   if(aSctrccList != null&&aSctrccList.size()>0){
			   wjxxAllVo.setaSctrcc(aSctrccList.get(0));
		   }
		   
		   //3.查询--销售渠道及销售价格
		   List<AXsqdjg> aXsqdjgList = axsqdjgMapper.selectForUpdata(aWjid);
		   
		   if(aXsqdjgList != null&&aXsqdjgList.size()>0){
			   wjxxAllVo.setaXsqdjg(aXsqdjgList.get(0));
		   }
		   
		   //4.技术研发推广需求及评价
		   List<AJsxqgg> aJsxqggList = ajxsqggMapper.selectForUpdata(aWjid);
		   
		   if(aJsxqggList != null&&aJsxqggList.size()>0){
			  
			   wjxxAllVo.setaJList(aJsxqggList);
			   
		   }
		   
		   //5.主观问题
		   List<AZgwt> aZgwtList = azgwtMapper.selectForUpdata(aWjid);
		   
		   if(aZgwtList != null&&aZgwtList.size()>0){
			   wjxxAllVo.setaZgwt(aZgwtList.get(0));
		   }
		   
		   return wjxxAllVo;
	   }
	   
	   /**
	    * 实现保存问卷修改过的信息
	    * john 2018-7-3
	    */
	   @Override
		public Boolean insertForUpdata(QuestionBase questionBase) {
			

			//调查表的主表id
			String queId = questionBase.awjxx.getaWjid(); 
			
			//1.基础表
			List<AWjxx> awjxxs = new ArrayList<AWjxx>();
			awjxxs = awjxxMapper.selectByPrimaryKey(queId);
			
			if (awjxxs.size() == 0) {
				awjxxMapper.insert(questionBase.awjxx);
			} else {
				awjxxMapper.updateByPrimaryKey(questionBase.awjxx);
			}
			
			//2.投入产出
			List<ASctrcc> asctrccs = new ArrayList<ASctrcc>();
			
			asctrccs = asctrccMapper.selectByTerm(queId);

			if (asctrccs.size() == 0) {
				asctrccMapper.insert(questionBase.asctrcc);
			} else {
				asctrccMapper.updateByTerm(questionBase.asctrcc);
			}
			
			//3.销售渠道及价格
			List<AXsqdjg> axsqdjg = new ArrayList<AXsqdjg>();
			axsqdjg = axsqdjgMapper.selectByTerm(queId);
			if(axsqdjg.size() == 0){
				
				for (AXsqdjg aWjid : questionBase.aXsqdjgList) {
					/*if(aWjid.getaXssj().isEmpty()&&aWjid.getaXsjg().isEmpty()&&aWjid.getaXsl().isEmpty()){
						
					}else{*/
						axsqdjgMapper.insert(aWjid);
					//}
				}
				
			} else {
				for (AXsqdjg aWjid : questionBase.aXsqdjgList) {
					axsqdjgMapper.updateByTerm(aWjid);
				}
				
			}
			
			//4.技术推广需求及评价
			List<AJsxqgg> ajsxqgg = new ArrayList<AJsxqgg>();
			ajsxqgg = ajxsqggMapper.selectByTerm(queId);
			if(ajsxqgg.size() == 0){
				for (AJsxqgg aWjid : questionBase.aJsxqggList) {
					/*if(aWjid.getaXjspj().isEmpty()&&aWjid.getaXyjspj().isEmpty()){
						
					}else{
						ajxsqggMapper.insert(aWjid);
					}*/
					ajxsqggMapper.insert(aWjid);
				}
			}else{
				for (AJsxqgg aWjid : questionBase.aJsxqggList) {
					ajxsqggMapper.updateByTerm(aWjid);
				}
			}
			
			//5.主观问题表
			List<AZgwt> azgwt = new ArrayList<AZgwt>();
			azgwt = azgwtMapper.selectByTerm(queId);
			if(azgwt.size() == 0){
				azgwtMapper.insert(questionBase.azgwt);
			}else{
				azgwtMapper.updateByTerm(questionBase.azgwt);
			}
			

			return false;
		}
	   
}
