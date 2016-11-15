package com.tpms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tpms.dao.BaseDAO;
import com.tpms.dao.ClassDAO;
import com.tpms.dao.StudentDAO;
import com.tpms.dao.TeacherDAO;
import com.tpms.dao.UserDAO;
import com.tpms.po.Tclass;
import com.tpms.po.TmanagementRight;
import com.tpms.po.TmonitoringRight;
import com.tpms.po.Tstudent;
import com.tpms.po.Tteacher;
import com.tpms.po.Tuser;
import com.tpms.utils.TPMSUtils;

@Service
@Transactional
public class AdminServiceImpl implements AdminService{

	@Autowired
	private UserDAO userDAO;
	@Autowired
	private StudentDAO studentDAO;
	@Autowired
	private TeacherDAO teacherDAO;
//	@Autowired
//	private BaseDAO<TmanagementRight> managementRightDAO;
//	@Autowired
//	private BaseDAO<TmonitoringRight> monitoringRightDAO;
	@Autowired
	private ClassDAO classDAO;

	public void insertOneStudnt(Tstudent student) {

		studentDAO.insert(student); // 插入学生信息
		// 插入相应用户信息
		String id = student.getStudentID();
		String passwd = TPMSUtils.getDefaultPasswdByID(id);
		String role = Tuser.STUDENT;
		userDAO.insert(new Tuser(id, passwd, role));
	}

	public void insertOneTeacher(Tteacher teacher) {
		// 插入教师信息
		teacherDAO.insert(teacher);
		// 插入相应用户信息
		String id = teacher.getTeacherID();
		String passwd = TPMSUtils.getDefaultPasswdByID(id);
		String role = Tuser.TEACHER;
		userDAO.insert(new Tuser(id, passwd, role));
	}

	@Override
	public void insertOneClass(Tclass tclass) {
		classDAO.insert(tclass);
	}

	@Override
	public void insertStudents(List<Tstudent> tstudents) {
		for (Tstudent tstudent : tstudents) {
			insertOneStudnt(tstudent);
		}
	}

}
