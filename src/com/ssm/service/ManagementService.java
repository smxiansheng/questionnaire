package com.ssm.service;


import java.util.List;

import com.ssm.model.BJyztlx;
import com.ssm.model.BSclx;


public interface ManagementService {

	List<BJyztlx> findManagement();

	List<BJyztlx> searchManagementByName(String str);

	int deleteManagementById(int id);

	int addManagement(BJyztlx bjyztlx);



}
