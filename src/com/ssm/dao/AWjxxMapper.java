package com.ssm.dao;

import java.util.List;

import com.ssm.model.AWjxx;
import com.ssm.model.AYhb;
import com.ssm.vo.AWjxxVo;
import com.ssm.vo.SearchProductVo;
import com.ssm.vo.searchTechVo;

public interface AWjxxMapper {
    int deleteByPrimaryKey(String aWjid);

    int insert(AWjxx record);

    int insertSelective(AWjxx record);

    List<AWjxx> selectByPrimaryKey(String aWjid);

    int updateByPrimaryKeySelective(AWjxx record);

    int updateByPrimaryKey(AWjxx record);

	List<AWjxx> select();

	//zhp
	List<AWjxx> findAllQuestionlist(List<AYhb> userlist);
	List<AWjxx> searchQuestionlistByCondition(AWjxxVo awjxxvo);
	
	//zt
	public List<AWjxx> selectBySomeInfo(AWjxx awjxx);
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
	
}