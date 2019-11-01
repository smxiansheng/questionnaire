package com.ssm.dao;

import java.util.List;

import com.ssm.model.ASctrcc;
import com.ssm.model.AWjxx;

public interface ASctrccMapper {
    int deleteByPrimaryKey(String aTrccid);

    int insert(ASctrcc record);

    int insertSelective(ASctrcc record);

    List<ASctrcc> selectByPrimaryKey(String aWjid);
    List<ASctrcc> selectByTerm(String aWjid);
    
    List<ASctrcc> selectForUpdata(String aWjid);

    int updateByPrimaryKeySelective(ASctrcc record);

    int updateByPrimaryKey(ASctrcc record);
    int updateByTerm(ASctrcc aSctrcc);

	//zzj 6.28 搜索所有
    List<ASctrcc> selectAll(String aWjid);
    List<ASctrcc> selectjoinAwjxx(AWjxx aWjxx);
}