package com.tpms.web;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.tpms.po.Tuser;
import com.tpms.po.TuserInfo;
import com.tpms.service.UserService;
import com.tpms.utils.IPTimeStamp;
import com.tpms.utils.QiniuUp;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	// modifyPasswd.do
	@RequestMapping("modifyPasswd.do")
	@ResponseBody
	public ResponseEntity<String> mPWDO(String account, String newPasswd){
		
		String ac = account.trim();
		String pw = newPasswd.trim();
		
		userService.modifyPasswd(ac, pw);
		
		return new ResponseEntity<String>("success", HttpStatus.OK);
	}
	
	// modifyUserInfo.do
	@RequestMapping("modifyUserInfo.do")
	public String modifyUserInfoDO( HttpServletRequest request, @Param("file")MultipartFile file, String email,  String mobile, String des  ){
		System.err.println("1111111111111111111111111");
		TuserInfo uInfo = (TuserInfo) request.getSession().getAttribute("userInfo");
		System.err.println("2222222222222222222");
		if( uInfo == null ){
			return "login";
		}
		
		uInfo.setEmail(email);
		uInfo.setPhoneNumber(mobile);
		uInfo.setSelfIntroduction(des);
		
		if( ! file.isEmpty() ){
		
			IPTimeStamp ipTimeStamp = new IPTimeStamp(file.getOriginalFilename());
			String imgName = ipTimeStamp.getIPTimeRandName();
			String fileName = "head/" + imgName;
			
			uInfo.setHead("http://ogxfabiku.bkt.clouddn.com/"+fileName); // 更新头像路径
			
			try {
				
				QiniuUp.upload(file.getBytes(),  fileName ); // 上传文件至七牛
				
			} catch (IOException e) {
				System.err.println("文件内容获取错误");
			}
			
		}
		
		userService.updateUserInfo(uInfo); // 持久化更新
		
		String role = ((Tuser) request.getSession().getAttribute("user")).getRole();
		String des_page = "";
		
		// 根据角色 跳回相应页面
		if( Tuser.ADMIN.equals(role) ){ // 管理员
			
			des_page = "sm_personInfo";
			
		}else if( Tuser.TEACHER.equals(role) ){ // 教师
			
			des_page = "th_personInfo";
			
		}else if( Tuser.STUDENT.equals(role) ){ // 学生登录
			
			des_page = "stu_personInfo";
			
		}
		return des_page;
	}
	
	// exit.do
	@RequestMapping("exit.do")
	public String exitDO(HttpServletRequest request){
		Tuser tuser = (Tuser) request.getSession().getAttribute("user");
		if( tuser != null ){
			// 添加登录信息
			request.setAttribute("logInfo", "exit");
			// 添加账号信息
			request.setAttribute("account", tuser.getIdentity());
			// 添加密码信息
			request.setAttribute("passwd", tuser.getPasswd());
		}
		// 删除user信息
		request.getSession().removeAttribute("user");
		// 删除userInfo信息
		request.getSession().removeAttribute("userInfo");
		return "login";
	}
	
	// login.do
	@RequestMapping("login.do")
	public String loginDO(HttpServletRequest request, String account, String passwd){
		
		if( null == account && null == passwd ){ // 第一次登录
			return "login";
		}
		
		String des = "redirect:";
		Tuser tuser = userService.login(account, passwd);
		
		if( null == tuser ){ // 登陆失败
			
			request.setAttribute("logInfo", "用户名或密码错误"); // 无用户信息
			request.setAttribute("account", account);
			request.setAttribute("passwd", passwd);
			des = "login";
			
		} else {
			
			request.getSession().setAttribute("user", tuser); // 在会话中添加user信息
			request.getSession().setAttribute("userInfo", userService.findUserInfoByID(account)); // 在会话中添加userInfo信息

			String role = tuser.getRole(); // 获取用户角色 用以判断将要跳转的页面
			
			if( Tuser.ADMIN.equals(role) ){ // 管理员登录
				
				des += "system_manager.do";
				
			}else if( Tuser.TEACHER.equals(role) ){ // 教师登录
				
				des += "th_index.do";
				
			}else if( Tuser.STUDENT.equals(role) ){ // 学生登录
				
				des += "stu_task_pro.do";
				
			}
			
		}
		
		return des;
	}

}
