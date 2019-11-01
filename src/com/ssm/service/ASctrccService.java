package com.ssm.service;

import java.util.List;

import com.ssm.model.ASctrcc;
import com.ssm.model.AWjxx;

public interface ASctrccService {
	 public List<ASctrcc> SelectAsctrcc(ASctrcc aSctrcc); 
	 
	 public List<ASctrcc> SelectWjxxStrcc(AWjxx aWjxx); 
}
