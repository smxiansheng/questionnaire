package com.ssm.dao;

import java.util.List;

import com.ssm.model.BXl;

public interface BXlMapper {
    int deleteByPrimaryKey(Integer aXlid);

    int insert(BXl record);

    int insertSelective(BXl record);

    BXl selectByPrimaryKey(Integer aXlid);

    int updateByPrimaryKeySelective(BXl record);

    int updateByPrimaryKey(BXl record);

	List<BXl> findAllStudy();

	List<BXl> searchStudyByName(String str);
}