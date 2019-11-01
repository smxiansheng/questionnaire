package com.ssm.service;


import java.util.List;

import com.ssm.model.BSclx;
import com.ssm.model.BXl;


public interface StudyService {

	List<BXl> findStudy();

	List<BXl> searchStudyByName(String str);

	int deleteStudyById(int id);

	int addStudy(BXl bxl);


}
