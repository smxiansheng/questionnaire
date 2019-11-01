package com.ssm.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.ssm.dao.BJslxMapper;
import com.ssm.model.BJslx;
import com.ssm.model.BSclx;
import com.ssm.service.TechnologyService;

@Service
public class TechnologyServiceimpl implements TechnologyService {

 @Resource
  private BJslxMapper bjslxmapper;
	@Override
	public List<BJslx> findTechnology() {
	 List<BJslx> list = bjslxmapper.findAllTechnology();
	     System.out.println(list);
		return list;
	}
	@Override
	public List<BJslx> searchTechnologyByName(String str) {
		List<BJslx> list = bjslxmapper.searchTechnologyByName(str);
		return list;
	}
	@Override
	public int deleteTechnologyById(int id) {
		int result = bjslxmapper.deleteByPrimaryKey(id);
		return result;
	}
	@Override
	public int addTechnology(BJslx bjslx) {
		int result = bjslxmapper.insertSelective(bjslx);
		return result;
	}

	}



