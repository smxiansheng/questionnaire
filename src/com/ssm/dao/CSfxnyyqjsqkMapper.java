package com.ssm.dao;

import com.ssm.model.CSfxnyyqjsqk;

public interface CSfxnyyqjsqkMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CSfxnyyqjsqk record);

    int insertSelective(CSfxnyyqjsqk record);

    CSfxnyyqjsqk selectByPrimaryKey(Integer id);
    
    CSfxnyyqjsqk selectByExample(String sfxid);

    int updateByForeignKey(CSfxnyyqjsqk record);
    
    int updateByPrimaryKeySelective(CSfxnyyqjsqk record);

    int updateByPrimaryKey(CSfxnyyqjsqk record);
}