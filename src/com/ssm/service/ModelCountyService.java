package com.ssm.service;

import java.util.List;

import com.ssm.model.ModelCounty;

public interface ModelCountyService {
          public int add(ModelCounty modelCounty);
          
          public ModelCounty  select(String id);
          
          public int update(ModelCounty modelCounty);
}
