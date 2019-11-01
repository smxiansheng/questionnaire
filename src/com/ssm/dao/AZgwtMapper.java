package com.ssm.dao;

import java.util.List;

import com.ssm.model.AZgwt;

public interface AZgwtMapper {
    int deleteByPrimaryKey(String aZgwtid);

    int insert(AZgwt record);

    int insertSelective(AZgwt record);

    AZgwt selectByPrimaryKey(String aZgwtid);

    int updateByPrimaryKeySelective(AZgwt record);

    int updateByPrimaryKey(AZgwt record);

	List<AZgwt> selectByTerm(String aWjid);

	int updateByTerm(AZgwt azgwt);

	List<AZgwt> selectForUpdata(String aWjid);
}