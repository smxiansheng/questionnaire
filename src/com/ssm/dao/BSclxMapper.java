package com.ssm.dao;

import java.util.List;

import com.ssm.model.BSclx;

public interface BSclxMapper {
    int deleteByPrimaryKey(Integer scid);

    int insert(BSclx record);

    int insertSelective(BSclx record);

    BSclx selectByPrimaryKey(Integer scid);

    int updateByPrimaryKeySelective(BSclx record);

    int updateByPrimaryKey(BSclx record);

	List<BSclx> findAllVegetables();

	List<BSclx> searchVegetablesByName(String str);
}