package com.ssm.service;

import java.util.List;

import com.ssm.model.AYhb;
import com.ssm.model.CBumen;
import com.ssm.vo.CbumenSelectVo;

public interface CbumenService {
   public List<CBumen> SelectbumenByid(CBumen cBumen); 
   public boolean InsertBumen(CBumen cBumen);
   public List<CBumen> SelectbumenAll(CBumen cBumen);
   
   public List<CBumen> SelectbumenByname(CBumen cBumen,AYhb aYhb);
   
   public Boolean DelectById(CBumen cBumen); 
   
   public Boolean SelectbumenBysuoshuid(CBumen cBumen); 
   
   public List<CBumen> selectbyn(CBumen cBumen);
   
   public CBumen SelectByfatheId(CBumen cBumen);
   
   public List<CBumen> SelectdownBm(List<CBumen> bumens);
   
}
