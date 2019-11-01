package com.ssm.service.impl;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.ssm.dao.BSclxMapper;
import com.ssm.model.BSclx;
import com.ssm.service.VegetablesService;

@Service
public class VegetablesServiceimpl implements VegetablesService {

 @Resource
  private BSclxMapper bsclxmapper;
	@Override
	public List<BSclx> findVegetables() {
	 List<BSclx> list = bsclxmapper.findAllVegetables();
	     System.out.println(list);
		return list;
	}
	@Override
	public List<BSclx> searchVegetablesByName(String str) {
		List<BSclx> list = bsclxmapper.searchVegetablesByName(str);
		return list;
	}
	@Override
	public int deleteVegetablesById(int id) {
		int result = bsclxmapper.deleteByPrimaryKey(id);
		return result;
	}
	@Override
	public int addVegetables(BSclx bsclx) {
		int result = bsclxmapper.insertSelective(bsclx);
		return result;
	}

}
