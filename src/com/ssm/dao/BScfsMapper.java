package com.ssm.dao;

import com.ssm.model.BScfs;

public interface BScfsMapper {
    int deleteByPrimaryKey(Integer scfsid);

    int insert(BScfs record);

    int insertSelective(BScfs record);

    BScfs selectByPrimaryKey(Integer scfsid);

    int updateByPrimaryKeySelective(BScfs record);

    int updateByPrimaryKey(BScfs record);
}