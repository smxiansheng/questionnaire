package com.ssm.dao;

import com.ssm.model.AJyfx;

public interface AJyfxMapper {
    int deleteByPrimaryKey(Integer aJyfxid);

    int insert(AJyfx record);

    int insertSelective(AJyfx record);

    AJyfx selectByPrimaryKey(Integer aJyfxid);

    int updateByPrimaryKeySelective(AJyfx record);

    int updateByPrimaryKey(AJyfx record);
}