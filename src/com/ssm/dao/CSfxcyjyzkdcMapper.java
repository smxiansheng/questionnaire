package com.ssm.dao;

import java.util.List;

import com.ssm.model.CSfxcyjyzkdc;
import com.ssm.model.CSfxcyjyzkdcList;

public interface CSfxcyjyzkdcMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CSfxcyjyzkdc record);

    int insertSelective(CSfxcyjyzkdc record);

    CSfxcyjyzkdc selectByPrimaryKey(Integer id);

  //List< CSfxcyjyzkdcList> selectByExampleList(String sfxid);
   
    List<Integer>selectByID(String sfxid);
    
  List< CSfxcyjyzkdcList>selectByExample(String sfxid);
   
    int updateByForeignKey(CSfxcyjyzkdc record);
    
    int updateByPrimaryKeySelective(CSfxcyjyzkdc record);

    int updateByPrimaryKey(CSfxcyjyzkdc record);
}