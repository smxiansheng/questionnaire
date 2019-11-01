package com.ssm.service;


import java.util.List;

import com.ssm.model.BSclx;


public interface VegetablesService {

List<BSclx> findVegetables();

List<BSclx> searchVegetablesByName(String str);

int deleteVegetablesById(int id);

int addVegetables(BSclx bsclx);
	

}
