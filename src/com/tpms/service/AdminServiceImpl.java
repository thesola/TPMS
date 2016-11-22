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
import com.tpms.dao.UserInfoDAO;
import com.tpms.po.Tclass;
import com.tpms.po.TmanagementRight;
import com.tpms.po.TmonitoringRight;
import com.tpms.po.Tstudent;
import com.tpms.po.Tteacher;
import com.tpms.po.Tuser;
import com.tpms.po.TuserInfo;
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
	@Autowired
	private BaseDAO<TmanagementRight> managementRightDAO;
	@Autowired
	private BaseDAO<TmonitoringRight> monitoringRightDAO;
	@Autowired
	private ClassDAO classDAO;
	@Autowired
	private UserInfoDAO userInfoDAO;

	@Override
	public void insertOneStudnt(Tstudent student) {

		studentDAO.insert(student); // 插入学生信息
		// 插入相应用户信息
		String id = student.getStudentID();
		String passwd = TPMSUtils.getDefaultPasswdByID(id);
		String role = Tuser.STUDENT;
		userDAO.insert(new Tuser(id, passwd, role));
		
		// 插入相应的用户详细信息
		userInfoDAO.insert(new TuserInfo(id,student.getStudentName()));
	}

	@Override
	public void insertOneTeacher(Tteacher teacher) {
		// 插入教师信息
		teacherDAO.insert(teacher);
		// 插入相应用户信息
		String id = teacher.getTeacherID();
		String passwd = TPMSUtils.getDefaultPasswdByID(id);
		String role = Tuser.TEACHER;
		userDAO.insert(new Tuser(id, passwd, role));
		
		// 插入相应的用户详细信息
		userInfoDAO.insert(new TuserInfo(id,teacher.getTeacherName()));
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

	@Override
	public String getUserStatusByID(String ID) {
		Tuser record = new Tuser();
		record.setIdentity(ID);
		Tuser tuser = userDAO.selectOne(record); // 找到用户实体
		if( tuser == null ){ // 未查到用户
			System.err.println("未查到用户id："+ ID );
			return "null";
		}
		return tuser.getStatus(); // 获取用户状态
	}

	@Override
	public void setUserStatusByID(String ID, String newStatus) {
		Tuser record = new Tuser();
		record.setIdentity(ID);
		Tuser tuser = userDAO.selectOne(record); // 找到用户实体
		
		tuser.setStatus(newStatus); // 更新状态
		userDAO.updateByPrimaryKey(tuser); // 提交更新
	}

	@Override
	public String getClassStatusByID(String ID) {
		Tclass record = new Tclass();
		record.setClassID(Integer.parseInt(ID));
		Tclass tclass = classDAO.selectOne(record); // 查询班级实体
		
		return tclass.getStatus(); // 获取班级状态
	}

	@Override
	public void setClassStatusByID(String ID, String newStatus) {
		Tclass record = new Tclass();
		record.setClassID(Integer.parseInt(ID));
		Tclass tclass = classDAO.selectOne(record); // 查询班级实体
		
		tclass.setStatus(newStatus); // 更新状态
		classDAO.updateByPrimaryKey(tclass); // 提交更新
	}

	@Override
	public List<Tteacher> getAllTeachers() {
		return teacherDAO.selectAll();
	}

	@Override
	public List<Tteacher> getTeachersBy(String key) {
		return teacherDAO.selectBy(key);
	}

	@Override
	public List<Tteacher> getTeachersByStatus(String status) {
		return teacherDAO.selectByStatus(status);
	}

	@Override
	public List<Tclass> getAllClasses(String key) {
		return classDAO.selectAll();
	}

	@Override
	public List<Tclass> getClassesBy(String key) {
		return classDAO.selectBy(key);
	}

	@Override
	public List<Tclass> getClassesByStatus(String status) {
		return classDAO.selectByStatus(status);
	}

	@Override
	public List<Tstudent> getStudentsByClassID(String classID) {
		return studentDAO.selectByClassID(classID);
	}

	@Override
	public List<Tstudent> getStudentsBy(String key) {
		return studentDAO.selectBy(key);
	}

	@Override
	public List<Tstudent> getStudentsByStatus(String status) {
		return studentDAO.selectBystatus(status);
	}

	@Override
	public void addManagementRight(TmanagementRight mRight) {
		managementRightDAO.insert(mRight);
	}

	@Override
	public void removeManagementRight(Integer mRightID) {
		managementRightDAO.deleteByPrimaryKey(mRightID);
	}

	@Override
	public List<TmanagementRight> getManagementRights(String teacherID) {
		TmanagementRight record = new TmanagementRight();
		record.setTeacherID(teacherID);
		return managementRightDAO.select(record);
	}

	@Override
	public void addMonitoringRight(TmonitoringRight tRight) {
		monitoringRightDAO.insert(tRight);
	}

	@Override
	public void removeMonitoringRight(Integer tRightID) {
		monitoringRightDAO.deleteByPrimaryKey(tRightID);
	}

	@Override
	public List<TmonitoringRight> getMonitoringRights(String teacherID) {
		TmonitoringRight tRight = new TmonitoringRight();
		tRight.setTeacherID(teacherID);
		return monitoringRightDAO.select(tRight);
	}

	@Override
	public Tclass findClassByID(String id) {
		Tclass tclass = classDAO.selectByPrimaryKey(Integer.parseInt(id));
		if( tclass == null ){
			System.err.println( "class information not founded:classID="+id );
			return new Tclass();
		}
		return tclass;
	}

	

}
