package com.ssm.dao;

import java.util.List;

import com.ssm.model.AJsxqgg;

public interface AJsxqggMapper {
    int deleteByPrimaryKey(String aJsxqggid);

    int insert(AJsxqgg record);

    int insertSelective(AJsxqgg record);

    AJsxqgg selectByPrimaryKey(String aJsxqggid);

    int updateByPrimaryKeySelective(AJsxqgg record);

    int updateByPrimaryKey(AJsxqgg record);

	List<AJsxqgg> selectByTerm(String aWjid);

	void updateByTerm(AJsxqgg record);

	List<AJsxqgg> selectForUpdata(String aWjid);
}