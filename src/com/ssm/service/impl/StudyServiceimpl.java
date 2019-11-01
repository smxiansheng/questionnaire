package com.ssm.service.impl;

import java.util.List;
import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssm.dao.BXlMapper;
import com.ssm.model.BSclx;
import com.ssm.model.BXl;
import com.ssm.service.StudyService;

@Service
public class StudyServiceimpl implements StudyService {

 @Resource
  private BXlMapper bxlmapper;
	@Override
	public List<BXl> findStudy() {
	 List<BXl> list = bxlmapper.findAllStudy();
	     System.out.println(list);
		return list;
	}
	@Override
	public List<BXl> searchStudyByName(String str) {
		List<BXl> list = bxlmapper.searchStudyByName(str);
		return list;
	}
	@Override
	public int deleteStudyById(int id) {
		int result = bxlmapper.deleteByPrimaryKey(id);
		return result;
	}
	@Override
	public int addStudy(BXl bxl) {
		int result = bxlmapper.insertSelective(bxl);
		return result;
	}


}
