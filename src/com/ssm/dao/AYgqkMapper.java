package com.ssm.dao;

import com.ssm.model.AYgqk;

public interface AYgqkMapper {
    int deleteByPrimaryKey(String aYgqkid);

    int insert(AYgqk record);

    int insertSelective(AYgqk record);

    AYgqk selectByPrimaryKey(String aYgqkid);

    int updateByPrimaryKeySelective(AYgqk record);

    int updateByPrimaryKey(AYgqk record);
}