package com.ssm.service;


import java.util.List;

import com.ssm.model.BJslx;
import com.ssm.model.BSclx;


public interface TechnologyService {

	List<BJslx> findTechnology();

	List<BJslx> searchTechnologyByName(String str);

	int deleteTechnologyById(int id);

	int addTechnology(BJslx bjslx);





}
