package com.tpms.service;

import com.tpms.po.Tuser;
import com.tpms.po.TuserInfo;

// 用户公共行为服务
public interface UserService {

	// 用户登录
	public Tuser login(String account, String passwd);
	
	// 修改密码
	public void modifyPasswd(String account, String newPasswd);
	
	// 按id查询用户信息
	public TuserInfo findUserInfoByID(String ID);
		
	// 修改用户信息
	public void updateUserInfo(TuserInfo tuserInfo);
	
}
