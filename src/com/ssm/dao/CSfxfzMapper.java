package com.ssm.dao;

import com.ssm.model.CSfxfz;

public interface CSfxfzMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CSfxfz record);

    int insertSelective(CSfxfz record);

    CSfxfz selectByPrimaryKey(Integer id);
 
    CSfxfz selectByExample(String sfxid);
    
    int updateByForeignKey(CSfxfz record);
    
    int updateByPrimaryKeySelective(CSfxfz record);

    int updateByPrimaryKey(CSfxfz record);
}