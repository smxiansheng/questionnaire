package com.ssm.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ssm.model.CBumen;
import com.ssm.model.CBumenExample;

public interface CBumenMapper {
    int countByExample(CBumenExample example);

    int deleteByExample(CBumenExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(CBumen record);

    int insertSelective(CBumen record);

    List<CBumen> selectByExample(CBumenExample example);

    CBumen selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") CBumen record, @Param("example") CBumenExample example);

    int updateByExample(@Param("record") CBumen record, @Param("example") CBumenExample example);

    int updateByPrimaryKeySelective(CBumen record);

    int updateByPrimaryKey(CBumen record);
    
    List<CBumen> selectall(CBumen record);
    
    List<CBumen> selectname(CBumen record);
    
    List<CBumen> selectnamesuoshubumen(CBumen record);
    
}