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
	//����2�������Ϣ��������Ϣ��Ͷ�����
	
	@Override
	public Boolean addOrUpdata(QuestionBase questionBase) {
		

		//����������id
		String queId = questionBase.awjxx.getaWjid(); 
		
		//1.������
		List<AWjxx> awjxxs = new ArrayList<AWjxx>();
		awjxxs = awjxxMapper.selectByPrimaryKey(queId);
		
		if (awjxxs.size() == 0) {
			awjxxMapper.insert(questionBase.awjxx);
		} else {
			awjxxMapper.updateByPrimaryKey(questionBase.awjxx);
		}
		
		//2.Ͷ�����
		List<ASctrcc> asctrccs = new ArrayList<ASctrcc>();
		
		//�����ʾ�id����������
		asctrccs = asctrccMapper.selectByTerm(queId);

		if (asctrccs.size() <= 0) {
			asctrccMapper.insert(questionBase.asctrcc);
		} else {
			//���ѳ��������ݵ�id����Ҫ���µ�����
			String asctrrcId = asctrccs.get(0).getaTrccid();
			questionBase.asctrcc.setaTrccid(asctrrcId);
			asctrccMapper.updateByPrimaryKey(questionBase.asctrcc);
		}
		
		//3.�����������۸�
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
		
		//4.�����ƹ���������
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
		
		//5.���������
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
	 * ��Ҫ��Ʒ�����������۸��ѯ
	 */
	@Override
	public List<SearchProductVo> searchProducts(AWjxx awjxx) {
		List<SearchProductVo> awjxxs = new ArrayList<SearchProductVo>();
		awjxxs = awjxxMapper.searchProducts(awjxx);
		return awjxxs;
	}
	   /**
		 * zt
		 * ���������뼼�����������ѯ
		 */   
	@Override
	public List<searchTechVo> searchTech(AWjxx awjxx) {
		List<searchTechVo> awjxxs = new ArrayList<searchTechVo>();
		awjxxs = awjxxMapper.searchTech(awjxx);
		return awjxxs;
	}
	
	 /**
	    * john added 2018-7-1 �����ʾ�id��ѯȫ���ʾ���Ϣ 
	    * @param aWjid
	    * @return
	    */
	   @Override
	   public WjxxAllVo selectForUpdate(String aWjid){
		   
		   WjxxAllVo wjxxAllVo = new WjxxAllVo();
		   
		   //1.��ѯ������Ϣ
		   List<AWjxx> aWjxxList = awjxxMapper.selectByPrimaryKey(aWjid);
		   
		   if (aWjxxList!=null&&aWjxxList.size()>0){
			   wjxxAllVo.setaWjxx(aWjxxList.get(0));
		   }

		   //2.��ѯͶ�����
		   List<ASctrcc> aSctrccList = asctrccMapper.selectForUpdata(aWjid);
		   
		   if(aSctrccList != null&&aSctrccList.size()>0){
			   wjxxAllVo.setaSctrcc(aSctrccList.get(0));
		   }
		   
		   //3.��ѯ--�������������ۼ۸�
		   List<AXsqdjg> aXsqdjgList = axsqdjgMapper.selectForUpdata(aWjid);
		   
		   if(aXsqdjgList != null&&aXsqdjgList.size()>0){
			   wjxxAllVo.setaXsqdjg(aXsqdjgList.get(0));
		   }
		   
		   //4.�����з��ƹ���������
		   List<AJsxqgg> aJsxqggList = ajxsqggMapper.selectForUpdata(aWjid);
		   
		   if(aJsxqggList != null&&aJsxqggList.size()>0){
			  
			   wjxxAllVo.setaJList(aJsxqggList);
			   
		   }
		   
		   //5.��������
		   List<AZgwt> aZgwtList = azgwtMapper.selectForUpdata(aWjid);
		   
		   if(aZgwtList != null&&aZgwtList.size()>0){
			   wjxxAllVo.setaZgwt(aZgwtList.get(0));
		   }
		   
		   return wjxxAllVo;
	   }
	   
	   /**
	    * ʵ�ֱ����ʾ��޸Ĺ�����Ϣ
	    * john 2018-7-3
	    */
	   @Override
		public Boolean insertForUpdata(QuestionBase questionBase) {
			

			//����������id
			String queId = questionBase.awjxx.getaWjid(); 
			
			//1.������
			List<AWjxx> awjxxs = new ArrayList<AWjxx>();
			awjxxs = awjxxMapper.selectByPrimaryKey(queId);
			
			if (awjxxs.size() == 0) {
				awjxxMapper.insert(questionBase.awjxx);
			} else {
				awjxxMapper.updateByPrimaryKey(questionBase.awjxx);
			}
			
			//2.Ͷ�����
			List<ASctrcc> asctrccs = new ArrayList<ASctrcc>();
			
			asctrccs = asctrccMapper.selectByTerm(queId);

			if (asctrccs.size() == 0) {
				asctrccMapper.insert(questionBase.asctrcc);
			} else {
				asctrccMapper.updateByTerm(questionBase.asctrcc);
			}
			
			//3.�����������۸�
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
			
			//4.�����ƹ���������
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
			
			//5.���������
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
