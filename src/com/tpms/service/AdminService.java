package com.tpms.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.tpms.dao.BaseDAO;
import com.tpms.po.Tclass;
import com.tpms.po.TmanagementRight;
import com.tpms.po.TmonitoringRight;
import com.tpms.po.Tstudent;
import com.tpms.po.Tteacher;
import com.tpms.po.Tuser;

public class AdminService {
	
	@Autowired
	private BaseDAO<Tuser> userDAO;
	@Autowired
	private BaseDAO<Tstudent> studentDAO;
	@Autowired
	private BaseDAO<Tteacher> teacherDAO;
	@Autowired
	private BaseDAO<TmanagementRight> managementRightDAO;
	@Autowired 
	private BaseDAO<TmonitoringRight> monitoringRightDAO;
	@Autowired
	private BaseDAO<Tclass> classDAO;

}
