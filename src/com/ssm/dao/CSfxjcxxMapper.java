package com.ssm.dao;

import java.util.List;

import com.ssm.model.AYhb;
import com.ssm.model.CSfxjcxx;
import com.ssm.vo.CSfxjcxxVo;

public interface CSfxjcxxMapper {
    int deleteByPrimaryKey(String aSfxid);

    int insert(CSfxjcxx record);

    int insertSelective(CSfxjcxx record);

    CSfxjcxx selectByPrimaryKey(String aSfxid);

    int updateByPrimaryKeySelective(CSfxjcxx record);

    int updateByPrimaryKey(CSfxjcxx record);
    
    List<CSfxjcxx> findAllDemonstrationXian(List<AYhb> userlist);

	List<CSfxjcxx> searchDemonstrationXianByCondition(CSfxjcxxVo csfxjcxxvo);

    
}