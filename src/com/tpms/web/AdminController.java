package com.tpms.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tpms.po.ClassInfo;
import com.tpms.po.RightInfo;
import com.tpms.po.Tclass;
import com.tpms.po.TmanagementRight;
import com.tpms.po.TmonitoringRight;
import com.tpms.po.Tteacher;
import com.tpms.po.Tuser;
import com.tpms.service.AdminService;

@Controller
public class AdminController {

	@Autowired
	private AdminService adminService;
	
	private final String logoff = "注销";
	private final String restore = "还原";
	
	// getClassList.do
	@RequestMapping("getClassList.do")
	@ResponseBody
	public ResponseEntity<List<Tclass>> getClassListDO(){
		
		List<Tclass> tclasses = adminService.getAllClasses();

		return new ResponseEntity<>(tclasses, HttpStatus.OK);
		
	}
	
	// addClass.do
	@RequestMapping("addClass.do")
	@ResponseBody
	public ResponseEntity<String> addClassDO( String cName ){
		adminService.insertOneClass(new Tclass( cName ));
		return new ResponseEntity<>(HttpStatus.OK);
	}
	
	// addMoniRight.do
	@RequestMapping("addMoniRight.do")
	@ResponseBody
	public ResponseEntity<String> addMoniRightDO( String cID, String tID ){
		adminService.addMonitoringRight(new TmonitoringRight(tID, cID, null, null));
		return new ResponseEntity<>(HttpStatus.OK);
	}
	
	// addManaRight.do
	@RequestMapping("addManaRight.do")
	@ResponseBody
	public ResponseEntity<String> addManaRightDO( String cID, String tID ){
		adminService.addManagementRight(new TmanagementRight(tID, cID, null, null));
		return new ResponseEntity<>(HttpStatus.OK);
	}
	
	// getUsableClasses.do
	@RequestMapping("getUsableClasses.do")
	@ResponseBody
	public ResponseEntity<List<ClassInfo>> getUsableClassesDO(){
		List<Tclass> tclasses = adminService.getClassesByStatus(Tclass.AVAILABLE); // 获取所有可用班级列表
		List<ClassInfo> classInfos = new ArrayList<>();
		
		for (Tclass tclass : tclasses) {
			int num = adminService.getStudentsByClassID( tclass.getClassID() ).size();
			classInfos.add(new ClassInfo( tclass.getClassID(), tclass.getClassName(), num ));
		}
		
		return new ResponseEntity<>(classInfos, HttpStatus.OK);
	}
	
	// delMoni.do
	@RequestMapping("delMoni.do")
	@ResponseBody
	public ResponseEntity<String> delMoniDO(String id){
		adminService.removeMonitoringRight(Integer.parseInt(id.trim()));
		return new ResponseEntity<>(HttpStatus.OK);
	}
	
	// delMana.do
	@RequestMapping("delMana.do")
	@ResponseBody
	public ResponseEntity<String> delManaDO( String id ){
		adminService.removeManagementRight(Integer.parseInt(id.trim()));
		return new ResponseEntity<>(HttpStatus.OK);
	}
	
	// getClassInfoByTeacherID.do
	@RequestMapping("getClassInfoByTeacherID.do")
	@ResponseBody
	public ResponseEntity<Map<String, List<RightInfo>>> getClassInfoByTeacherIDDO(String id){
		List<RightInfo> mana = new ArrayList<>(); // 管理的班级列表
		List<RightInfo> moni = new ArrayList<>(); // 听课的班级列表
		
		id = id.trim();
		List<TmanagementRight> mList = adminService.getManagementRights(id);
		List<TmonitoringRight> tList = adminService.getMonitoringRights(id);
		
		for (TmanagementRight tmanagementRight : mList) {
			
			String classID = tmanagementRight.getClassID();
			
			Tclass tclass = adminService.findClassByID( classID );
			
			int num = adminService.getStudentsByClassID(Integer.parseInt(classID)).size();
			
			mana.add(new RightInfo(id,tclass.getClassName(),num,tmanagementRight.getId()));
		
		}
		
		for (TmonitoringRight tmonitoringRight : tList) {
			
			String classID = tmonitoringRight.getClassID();
			
			Tclass tclass = adminService.findClassByID(classID);
			
			int num = adminService.getStudentsByClassID(Integer.parseInt(classID)).size();
			
			moni.add(new RightInfo( id, tclass.getClassName(), num, tmonitoringRight.getId() ));
		}
		
		Map<String, List<RightInfo>> map = new HashMap<>();
		map.put("mana", mana);
		map.put("moni", moni);
		return new ResponseEntity<>(map, HttpStatus.OK);
	}
	
	// modifyUserStatus.do
	@RequestMapping("modifyUserStatus.do")
	@ResponseBody
	public ResponseEntity<String> modifyUserStatusDO( String id, String nowST ){
		String newST = nowST.trim().equals(logoff) ? Tuser.DISABLED : Tuser.AVAILABLE;
		adminService.setUserStatusByID(id.trim(), newST);
		return new ResponseEntity<>("success", HttpStatus.OK);
	}
	
	// getUserStatus.do
	@RequestMapping("getUserStatus.do")
	@ResponseBody
	public ResponseEntity<String> getUserStatusDO(String id){
		String status = adminService.getUserStatusByID(id);
		
		if( Tuser.AVAILABLE.equals(status) ){ // 当前用户可用
			status = logoff; // 显示该用户可被注销
		}else if( Tuser.DISABLED.equals(status) ){ // 当前用户已被注销
			status = restore; // 显示该用户可被还原
		}
		
		return new ResponseEntity<>( status , HttpStatus.OK);
	}
	
	// addTeacher.do
	@RequestMapping("addTeacher.do")
	@ResponseBody
	public ResponseEntity<String> addTeacherDO( String teacherID, String teacherName, String gender ){
		Tteacher tteacher = new Tteacher(teacherID, teacherName, gender);
		adminService.insertOneTeacher(tteacher);
		return new ResponseEntity<>("success", HttpStatus.OK);
	}
	
	// "sm_personInfo.do"
	@RequestMapping("sm_personInfo.do")
	public String sm_personInfoDO(){
		return "sm_personInfo";
	}
	
	// system_manager.do
	@RequestMapping("system_manager.do")
	public String system_managerDO(HttpServletRequest request){
		request.setAttribute("teachers", adminService.getAllTeachers());
		return "system_manager";
	}
	
	// sm_classInfo.do
	@RequestMapping("sm_classInfo.do")
	public String sm_classInfoDO(){
		return "sm_classInfo";
	}
	
}
