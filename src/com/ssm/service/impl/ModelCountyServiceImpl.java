package com.ssm.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssm.dao.CSfxfzMapper;
import com.ssm.dao.CSfxjcxxMapper;
import com.ssm.model.CSfxcyjyzkdc;
import com.ssm.model.CSfxcyjyzkdcList;
import com.ssm.model.CSfxfz;
import com.ssm.model.CSfxjcxx;
import com.ssm.model.CSfxnyyqjsqk;
import com.ssm.model.CSfxscscqk;
import com.ssm.model.CSfxscscqkList;
import com.ssm.model.CSfxscscqkMap;
import com.ssm.model.ModelCounty;
import com.ssm.service.ModelCountyService;

import com.ssm.dao.BSclxMapper;
import com.ssm.dao.CSfxcyjyzkdcMapper;
import com.ssm.dao.CSfxnyyqjsqkMapper;
import com.ssm.dao.CSfxscscqkMapper;

@Service
public class ModelCountyServiceImpl implements ModelCountyService {

	@Resource
	private CSfxfzMapper cSfxfzMapper;

	@Resource
	private CSfxjcxxMapper cSfxjcxxMapper;

	@Resource
	private CSfxcyjyzkdcMapper cSfxcyjyzkdcMapper;

	@Resource
	private CSfxscscqkMapper cSfxscscqkMapper;

	@Resource
	private CSfxnyyqjsqkMapper cSfxnyyqjsqkMapper;

	@Resource 
	private BSclxMapper  bsclxMapper;
	
	/*
	 * @Resource private separatetableSet separatetableSet ;
	 */

	@Override
	public int add(ModelCounty modelCounty) {

		int state = 0;
		String cplb = "";
		//separatetableSet separatetableSet = new separatetableSet();
		List<CSfxcyjyzkdcList> cSfxcyjyzkdcList = modelCounty
				.getCSfxcyjyzkdcList();
		List<CSfxscscqkList> cSfxscscqkList = modelCounty.getCSfxscscqkList();
		CSfxfz cSfxfz = modelCounty.getCSfxfz();
		CSfxjcxx cSfxjcxx = modelCounty.getCSfxjcxx();
		CSfxnyyqjsqk cSfxnyyqjsqk = modelCounty.getCSfxnyyqjsqk();

		for (int i = 0; i < cSfxscscqkList.size(); i++) {

			for (int j = 0; j < cSfxscscqkList.get(i).getCplb().size(); j++) {
				CSfxscscqk cSfxscscqk = new CSfxscscqk();
				cSfxscscqk.setBzmj(cSfxscscqkList.get(i).getBzmj().get(j));
				cSfxscscqk.setCplb(cSfxscscqkList.get(i).getCplb().get(j));
				
				System.out.println(cSfxscscqkList.get(i).getCplb().get(j));
				if(cSfxscscqkList.get(i).getCplb().get(j)!=null){
				if (i == 0)
					cplb = cplb + cSfxscscqk.getCplb() + "-";
				}

				cSfxscscqk.setNf(modelCounty.getNf().get(i) + "");
				cSfxscscqk.setSfxid(cSfxjcxx.getaSfxid());
				cSfxscscqk.setSpl(cSfxscscqkList.get(i).getSpl().get(j));
				cSfxscscqk.setSwxl(cSfxscscqkList.get(i).getSwxl().get(j));
				cSfxscscqk.setZcl(cSfxscscqkList.get(i).getZcl().get(j));
				cSfxscscqk.setZcz(cSfxscscqkList.get(i).getZcz().get(j));
				cSfxscscqk.setZdmj(cSfxscscqkList.get(i).getZdmj().get(j));
				System.out.println(cSfxscscqkList.get(i).getCplb().size());

				state = cSfxscscqkMapper.insert(cSfxscscqk);
			}

		}
		for (int i = 0; i < cSfxcyjyzkdcList.size(); i++) {

			for (int j = 0; j < cSfxcyjyzkdcList.get(i).getJylx().size(); j++) {

				CSfxcyjyzkdc cSfxcyjyzkdc = new CSfxcyjyzkdc();
				cSfxcyjyzkdc.setCplb(cplb);
				cSfxcyjyzkdc.setJylx(cSfxcyjyzkdcList.get(i).getJylx().get(j));
				cSfxcyjyzkdc.setNf(modelCounty.getNf().get(i) + "");
				cSfxcyjyzkdc.setSfxid(cSfxjcxx.getaSfxid());
				state = cSfxcyjyzkdcMapper.insert(cSfxcyjyzkdc);
				System.out.println(cSfxcyjyzkdcList.get(i).getJylx().size());
			}

		}
            
		state = cSfxfzMapper.insert(cSfxfz);
		state = cSfxnyyqjsqkMapper.insert(cSfxnyyqjsqk);
		
		
		
		state = cSfxjcxxMapper.insert(cSfxjcxx);

		System.out.println(state);
		return  state;

	}

	@Override
	public ModelCounty select(String id) {
		ModelCounty modelCounty = new ModelCounty();
		
		modelCounty.setCSfxjcxx(cSfxjcxxMapper.selectByPrimaryKey(id));
		modelCounty.setCSfxfz(cSfxfzMapper.selectByExample(id));
		
		List<String> nf = cSfxscscqkMapper.selectBySfxid(id);
		modelCounty.setNf(nf);
		List<CSfxscscqk> cSfxcyjyzkdcList = cSfxscscqkMapper.selectByExample(id);
		List<CSfxscscqkMap> cSfxscscqkMapList= new ArrayList<CSfxscscqkMap>();
		for(int i=0;i<nf.size();i++){
			CSfxscscqkMap cSfxscscqkMap=new CSfxscscqkMap();
			cSfxscscqkMap.setNf(nf.get(i));
			List<CSfxscscqk> loc_cSfxscscqkList=new ArrayList<CSfxscscqk>();
			for(int j=0;j<cSfxcyjyzkdcList.size();j++){
				if(cSfxcyjyzkdcList.get(j).getNf().equals(nf.get(i))){
					loc_cSfxscscqkList.add(cSfxcyjyzkdcList.get(j));
					
				}
				
			}
			
			cSfxscscqkMap.setcSfxscscqkList(loc_cSfxscscqkList);
			
			cSfxscscqkMapList.add(cSfxscscqkMap);
		}
		
		modelCounty.setcSfxscscqkMap(cSfxscscqkMapList);
		
		
		
		modelCounty.setCSfxcyjyzkdcList(cSfxcyjyzkdcMapper.selectByExample(id));
		
		
		modelCounty.setCSfxnyyqjsqk(cSfxnyyqjsqkMapper.selectByExample(id));
		
		
		
		
		

		return modelCounty;
	}

	@Override
	public int update(ModelCounty modelCounty) {
		// TODO Auto-generated method stub

		String cplb = "";
		
		modelCounty.getCSfxfz().setSfxid(modelCounty.getCSfxjcxx().getaSfxid());
		
		modelCounty.getCSfxnyyqjsqk().setSfxid(modelCounty.getCSfxjcxx().getaSfxid());
		
		cSfxjcxxMapper.updateByPrimaryKey(modelCounty.getCSfxjcxx());
		
		cSfxfzMapper.updateByForeignKey(modelCounty.getCSfxfz());

		cSfxnyyqjsqkMapper.updateByForeignKey(modelCounty.getCSfxnyyqjsqk());
	

		List<Integer> id = cSfxscscqkMapper.selectByID(modelCounty.getCSfxjcxx().getaSfxid());
      
		int idNum=0;
		
		int q=1;
		
		int l=1;
		
		for (int i = 0; i < modelCounty.getCSfxscscqkList().size(); i++) {

			for (int j = 0; j < modelCounty.getCSfxscscqkList().get(i)
					.getCplb().size(); j++) {
				
				
				CSfxscscqk cSfxscscqk = new CSfxscscqk();
				cSfxscscqk.setBzmj(modelCounty.getCSfxscscqkList().get(i)
						.getBzmj().get(j));
				cSfxscscqk.setCplb(modelCounty.getCSfxscscqkList().get(i)
						.getCplb().get(j));
				// System.out.println(CSfxscscqkList.get(i).getCplb().get(j));
				if(cSfxscscqk.getCplb()!=null){
				if (i == 0)
					cplb = cplb + cSfxscscqk.getCplb() + "-";
				
				}

				cSfxscscqk.setNf(modelCounty.getNf().get(i) + "");
				cSfxscscqk.setSfxid(modelCounty.getCSfxjcxx().getaSfxid());
				cSfxscscqk.setSpl(modelCounty.getCSfxscscqkList().get(i)
						.getSpl().get(j));
				cSfxscscqk.setSwxl(modelCounty.getCSfxscscqkList().get(i)
						.getSwxl().get(j));
				cSfxscscqk.setZcl(modelCounty.getCSfxscscqkList().get(i)
						.getZcl().get(j));
				cSfxscscqk.setZcz(modelCounty.getCSfxscscqkList().get(i)
						.getZcz().get(j));
				cSfxscscqk.setZdmj(modelCounty.getCSfxscscqkList().get(i)
						.getZdmj().get(j));
					
            if(id.size()<=( modelCounty.getCSfxscscqkList().size())*(modelCounty.getCSfxscscqkList().get(i)
					.getCplb().size())){//当年份和蔬菜增加和不变时
            	  if(q>id.size()){
      						  
      							cSfxscscqkMapper.insert(cSfxscscqk);
      						  
      					}else{
      						
      						cSfxscscqk.setId(id.get(idNum));
      						cSfxscscqkMapper.updateByPrimaryKey(cSfxscscqk);
      					}
            }else{
            	  if((i+1)*(j+1)==( modelCounty.getCSfxscscqkList().size())*(modelCounty.getCSfxscscqkList().get(i)
					.getCplb().size())) {
            		  cSfxscscqk.setId(id.get(idNum));
						cSfxscscqkMapper.updateByPrimaryKey(cSfxscscqk);
						idNum++;
            		  for(;q<id.size();q++){
            			  cSfxscscqkMapper.deleteByPrimaryKey(id.get(idNum));
            				idNum++;
            		  }
            		  
            	  }else{
            		  cSfxscscqk.setId(id.get(idNum));
						cSfxscscqkMapper.updateByPrimaryKey(cSfxscscqk);
            		  
            	  }
            	  
            }
					
              idNum++;
              q++;
			}
          
		}
		
		idNum=0;
		q=1;
		id = cSfxcyjyzkdcMapper.selectByID(modelCounty.getCSfxjcxx().getaSfxid());
		
		for (int i = 0; i < modelCounty.getCSfxcyjyzkdcList().size(); i++) {

			for (int j = 0; j < modelCounty.getCSfxcyjyzkdcList().get(i).getJylx().size(); j++) {

				CSfxcyjyzkdc cSfxcyjyzkdc = new CSfxcyjyzkdc();
				cSfxcyjyzkdc.setCplb(cplb);
				cSfxcyjyzkdc.setJylx(modelCounty.getCSfxcyjyzkdcList().get(i).getJylx().get(j));
				cSfxcyjyzkdc.setNf(modelCounty.getNf().get(i) + "");
				cSfxcyjyzkdc.setSfxid(modelCounty.getCSfxjcxx().getaSfxid());
				if(id.size()<=modelCounty.getCSfxcyjyzkdcList().size()*5){//当年份和蔬菜增加和不变时
					  if(q>id.size()){
  						  
						  cSfxcyjyzkdcMapper.insert(cSfxcyjyzkdc);
						  
					}else{
						
						cSfxcyjyzkdc.setId(id.get(idNum));
						cSfxcyjyzkdcMapper.updateByPrimaryKey(cSfxcyjyzkdc);
					}
				}else{
					if((i+1)*(j+1)==(modelCounty.getCSfxcyjyzkdcList().size()*5 )){
						cSfxcyjyzkdc.setId(id.get(idNum));
						cSfxcyjyzkdcMapper.updateByPrimaryKey(cSfxcyjyzkdc);
								idNum++;
		            		  for(;q<id.size();q++){
		            			  cSfxcyjyzkdcMapper.deleteByPrimaryKey(id.get(idNum));
		            				idNum++;
		            		  }
		            		  
		            	  }else{
		            		  cSfxcyjyzkdc.setId(id.get(idNum));
		            		  cSfxcyjyzkdcMapper.updateByPrimaryKey(cSfxcyjyzkdc);
		            		  
		            	  }
					
				}
				
			
			 idNum++;
			 q++;
			}

		}
		
		
		return 0;

	}

}
