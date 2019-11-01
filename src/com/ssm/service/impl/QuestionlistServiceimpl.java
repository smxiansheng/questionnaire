package com.ssm.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssm.dao.AWjxxMapper;
import com.ssm.model.AWjxx;
import com.ssm.model.AYhb;
import com.ssm.service.Questionlist;
import com.ssm.vo.AWjxxVo;

@Service
public class QuestionlistServiceimpl implements Questionlist {
	 @Resource
	  private AWjxxMapper awjxxmapper;
	@Override
	public List<AWjxx> searchQuestionlist(List<AYhb> userlist) {
		List<AWjxx> list=awjxxmapper.findAllQuestionlist(userlist);
		return list;
	}

	@Override
	public int deleteQuestionlistById(String aWjid) {
		int deleteByPrimaryKey = awjxxmapper.deleteByPrimaryKey(aWjid);
		return deleteByPrimaryKey;
	}

	@Override
	public List<AWjxx> searchQuestionlistByCondition(AWjxxVo awjxxvo) {
		List<AWjxx> list=awjxxmapper.searchQuestionlistByCondition(awjxxvo);
		return list;
	}



}
