package com.ssm.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssm.dao.AYhbMapper;
import com.ssm.dao.CBumenMapper;
import com.ssm.model.AYhb;
import com.ssm.model.CBumen;
import com.ssm.model.CBumenExample;
import com.ssm.model.CBumenExample.Criteria;
import com.ssm.model.Yhb;
import com.ssm.service.YhbService;

@Service("YhbService")
public class YhbServiceImpl implements YhbService {

	@Resource
	private AYhbMapper aYhbMapper;

	@Resource
	private CBumenMapper cBumenMapper;
	
	

	public AYhb login(AYhb ayhb) {
		AYhb result = new AYhb();
		List<AYhb> resulta = new ArrayList<AYhb>();
		result = null;

		resulta = aYhbMapper.selectByPrimaryName(ayhb.getaXm());
		if (resulta.size() > 0) {
			for (int i = 0; i < resulta.size(); i++) {
				result = resulta.get(i);
			}

		}
		if (result != null) {
			String aString = result.getaKl();
			if (!aString.equals(ayhb.getaKl())) {
				result = null;
			}
		}
		return result;
		// TODO Auto-generated method stub

	}

	// 搜索出用户列表，根据当前用户搜索下一级包含的用户
	@Override
	public List<AYhb> UsersSelectList(AYhb ayhb) {
		// TODO Auto-generated meth
		List<AYhb> yhbs = new ArrayList<AYhb>();
		List<AYhb> tAYhbs = new ArrayList<AYhb>();
		if (ayhb.getaRoot() > 1) {
			CBumenExample aBumenExample = new CBumenExample();
			Criteria c = aBumenExample.createCriteria();
			c.andSuoshubumenidEqualTo(ayhb.getaBumenid());
			List<CBumen> cBumens = cBumenMapper.selectByExample(aBumenExample);
			if (ayhb.getaXm() == "" || ayhb.getaXm() == null) {
				tAYhbs = aYhbMapper.selectByprimaryListName(ayhb.getaXm());
			} else {
				tAYhbs = aYhbMapper.selectByPrimaryName(ayhb.getaXm());
			}
			for (int i = 0; i < cBumens.size(); i++) {
				for (int j = 0; j < tAYhbs.size(); j++) {
					if (cBumens.get(i).getId() == tAYhbs.get(j).getaBumenid()) {
						tAYhbs.get(j)
								.setaZm(cBumens.get(i).getBumenmingcheng());
						yhbs.add(tAYhbs.get(j));
					}
				}
			}

		} else {
			if (ayhb.getaXm() == "" || ayhb.getaXm() == null) {
				yhbs = aYhbMapper.selectByprimaryListName(ayhb.getaXm());
			} else {
				yhbs = aYhbMapper.selectByPrimaryName(ayhb.getaXm());
			}
			CBumenExample aBumenExample = new CBumenExample();
			Criteria c = aBumenExample.createCriteria();
			c.andBumenmingchengIsNotNull();
			List<CBumen> cBumens = cBumenMapper.selectByExample(aBumenExample);
			for (int i = 0; i < cBumens.size(); i++) {
				for (int j = 0; j < yhbs.size(); j++) {
					if (cBumens.get(i).getId() == yhbs.get(j).getaBumenid()) {
						yhbs.get(j).setaZm(cBumens.get(i).getBumenmingcheng());
					}
				}
			}
		}

		return yhbs;
	}

	// 增加用户
	@Override
	public Boolean UserInsert(AYhb aYhb) {
		// TODO Auto-generated method stub
		List<AYhb> yhbs = new ArrayList<AYhb>();
		yhbs = aYhbMapper.selectByPrimaryName(aYhb.getaXm());
		boolean result = false;
		if (yhbs.size() > 0) {
			result = false;
		} else {
			int a = 0;
			a = aYhbMapper.insertSelective(aYhb);
			result = true;
		}
		return result;
	}

	@Override
	public Boolean UserDelete(AYhb aYhb) {
		// TODO Auto-generated method stub
		Boolean result = false;
		int a = aYhbMapper.deleteByPrimaryKey(aYhb.getaDcrid());
		if (a == 1) {
			result = true;
		} else {
			result = false;
		}
		return result;
	}

	@Override
	public List<AYhb> UsersSelectListid(Yhb yhb) {
		// TODO Auto-generated meth
		List<AYhb> yhbs = new ArrayList<AYhb>();
		yhbs.add(aYhbMapper.selectByPrimaryKey(yhb.getA_dcrid()));
		return yhbs;

	}

	// 更新用户
	@Override
	public Boolean UserUpdata(AYhb aYhb) {
		Boolean result = false;

		int s = aYhbMapper.updateByPrimaryKeySelective(aYhb);
		if (s >= 1) {
			result = true;
		}

		return result;
	}
	//搜索 用户密码
	@Override
	public Boolean Userselect(AYhb aYhb) {
		Boolean result = false;
		
		AYhb aYhbs = aYhbMapper.selectByidname(aYhb);
		if (aYhbs!=null) {
			result = true;
		}

		return result;
	}
		//用来搜索 片 站 县 下的所有用户 
	@Override
	public List<AYhb> SelectByBumen(List<CBumen> bumens) {
		//用来存放最后的用户结果
		List<AYhb> result =new ArrayList<AYhb>();
		//查找所有符合条件的的用户
		result = aYhbMapper.selectByBumen(bumens);
		return result;
	}

}
