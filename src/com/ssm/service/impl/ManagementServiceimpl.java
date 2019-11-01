package com.ssm.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssm.dao.BJyztlxMapper;
import com.ssm.dao.BSclxMapper;
import com.ssm.model.BJyztlx;
import com.ssm.model.BSclx;
import com.ssm.service.ManagementService;

@Service
public class ManagementServiceimpl implements ManagementService {

 @Resource
  private BJyztlxMapper bjyztlxmapper;
	@Override
	public List<BJyztlx> findManagement() {
	 List<BJyztlx> list = bjyztlxmapper.findAllManagement();
	     System.out.println(list);
		return list;
	}
	@Override
	public List<BJyztlx> searchManagementByName(String str) {
		List<BJyztlx> list = bjyztlxmapper.searchManagementByName(str);
		return list;
	}
	@Override
	public int deleteManagementById(int id) {
		int result = bjyztlxmapper.deleteByPrimaryKey(id);
		return result;
	}
	@Override
	public int addManagement(BJyztlx bjyztlx) {
		int result = bjyztlxmapper.insertSelective(bjyztlx);
		return result;
	}

}
