package com.ssm.dao;

import java.util.List;

import com.ssm.model.AXsqdjg;

public interface AXsqdjgMapper {
    int deleteByPrimaryKey(String aXsqdid);

    int insert(AXsqdjg record);

    int insertSelective(AXsqdjg record);

    List<AXsqdjg> selectByPrimaryKey(String aXsqdid);

    int updateByPrimaryKeySelective(AXsqdjg record);

    int updateByPrimaryKey(AXsqdjg record);
    int updateByTerm(AXsqdjg record);

	List<AXsqdjg> selectByTerm(String aWjid);

	List<AXsqdjg> selectForUpdata(String aWjid);
}