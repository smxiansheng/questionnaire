package com.ssm.dao;

import java.util.List;

import com.ssm.model.CSfxscscqk;
import com.ssm.model.CSfxscscqkList;

public interface CSfxscscqkMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CSfxscscqk record);

    int insertSelective(CSfxscscqk record);

    CSfxscscqk selectByPrimaryKey(Integer id);
    
   List<CSfxscscqk> selectByExample(String sfxid);
   
   List<Integer>selectByID(String sfxid);
   
    int updateByPrimaryKeySelective(CSfxscscqk record);

    int updateByPrimaryKey(CSfxscscqk record);
    
    List<String>selectBySfxid(String sfxid); 
}