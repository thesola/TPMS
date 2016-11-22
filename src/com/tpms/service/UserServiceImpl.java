package com.tpms.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tpms.dao.UserDAO;
import com.tpms.dao.UserInfoDAO;
import com.tpms.po.Tuser;
import com.tpms.po.TuserInfo;

@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserInfoDAO userInfoDAO;
	@Autowired
	private UserDAO userDAO;
	
	
	@Override
	public TuserInfo findUserInfoByID(String ID) {
		return userInfoDAO.selectByPrimaryKey(ID);
	}

	@Override
	public void updateUserInfo(TuserInfo tuserInfo) {
		userInfoDAO.updateByPrimaryKey(tuserInfo);
	}

	@Override
	public Tuser login(String account, String passwd) {
		if( null == account || null == passwd ){
			return null;
		}
		Tuser tuser = new Tuser();
		tuser.setIdentity(account);
		tuser.setPasswd(passwd);
		return userDAO.selectOne(tuser);
	}

	@Override
	public void modifyPasswd(String account, String newPasswd) {
		Tuser record = new Tuser();
		record.setIdentity(account);
		Tuser tuser = userDAO.selectOne(record); // 查找用户信息
		tuser.setPasswd(newPasswd); // 修改密码
		userDAO.updateByPrimaryKey(tuser); // 提交修改
	}
	
}
