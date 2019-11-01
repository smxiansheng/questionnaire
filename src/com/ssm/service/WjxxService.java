package com.ssm.service;


import java.util.List;

import com.ssm.model.AWjxx;
import com.ssm.model.QuestionBase;
import com.ssm.vo.SearchProductVo;
import com.ssm.vo.WjxxAllVo;
import com.ssm.vo.searchTechVo;

public interface WjxxService {
   public List<AWjxx> insert(AWjxx Awjxx);
   public Boolean addOrUpdata(AWjxx Awjxx);
   Boolean addOrUpdata(QuestionBase questionBase);
   public QuestionBase query();
   public List<AWjxx> selectBySomeInfo(AWjxx Awjxx);
   /**
	 * zt 
	 * 主要产品销售渠道及价格查询
	 */
   public List<SearchProductVo> searchProducts(AWjxx awjxx);
   /**
	 * zt
	 * 技术需求与技术供给情况查询
	 */   
   public List<searchTechVo> searchTech(AWjxx awjxx);
   
   /**
    * john added 2018-7-1 根据问卷id查询全部问卷信息
    * @param aWjid
    * @return
    */
   public WjxxAllVo selectForUpdate(String aWjid);
   
   public Boolean insertForUpdata(QuestionBase questionBase);
}
