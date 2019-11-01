package com.ssm.service;

import java.util.List;

import com.ssm.model.AYhb;
import com.ssm.model.CBumen;
import com.ssm.model.Yhb;

public interface YhbService {
   public AYhb login(AYhb ayhb);
   public List<AYhb> UsersSelectList(AYhb ayhb);
   public List<AYhb> UsersSelectListid(Yhb yhb);
   public Boolean  UserInsert(AYhb aYhb);
   public Boolean  UserDelete(AYhb aYhb);
   public Boolean UserUpdata(AYhb aYhb);
   public Boolean Userselect(AYhb aYhb);
   public List<AYhb> SelectByBumen(List<CBumen> bumens);
}
