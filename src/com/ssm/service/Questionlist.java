package com.ssm.service;

import java.util.List;

import com.ssm.model.AWjxx;
import com.ssm.model.AYhb;
import com.ssm.vo.AWjxxVo;

public interface Questionlist {

	List<AWjxx> searchQuestionlist(List<AYhb> userlist);

	int deleteQuestionlistById(String aWjid);

	List<AWjxx> searchQuestionlistByCondition(AWjxxVo awjxxvo);

}
