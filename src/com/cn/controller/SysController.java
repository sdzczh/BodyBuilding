package com.cn.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cn.pojo.Admin;
import com.cn.pojo.Teach;
import com.cn.pojo.User;
import com.cn.service.IUserService;

@Controller  
@RequestMapping("/sys")  
public class SysController {
	@Resource  
    private IUserService userService;  
	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
      
	/**
	 * 管理员登录
	 * @param admin
	 * @param session
	 * @return
	 */
	@ResponseBody
    @RequestMapping("/loginAdmin")  
    public String toIndex(Admin	admin,HttpSession session){  
		admin=userService.adminLogin(admin.getName(),admin.getPwd());
		if(admin!=null){
			session.setAttribute("lastLoginTime", admin.getLastlogintime());
			session.setAttribute("account", "123");
			userService.setTime(df.format(new Date()));
			return "true";  
		}else{
			return "false";  
        }
    }  
	/**
	 * 管理员登录跳转
	 * @param session
	 * @return
	 */
	@RequestMapping("/ForwardAdmin")  
	public String loginForward(HttpSession session){  
		List<Map<String, Object>> countUserList=userService.countUser();
		session.setAttribute("countUser",countUserList);
		List<Map<String, Object>> countTeachList=userService.countTeach();
		session.setAttribute("countTeach",countTeachList);
		List<Map<String, Object>> countApparatusList=userService.countApparatus();
		session.setAttribute("countApparatus",countApparatusList);
		return "sys/main";  
	}  
	/**
	 * 用户列表
	 * @param session
	 * @return
	 */
	@RequestMapping("/userTable")  
	public String userTable(HttpSession session){  
		List<Map<String, Object>> findUserList=userService.findUser();
		session.setAttribute("findUserList",findUserList);
		return "sys/userTable";  
	}  
	/**
	 * 教练列表
	 * @param session
	 * @return
	 */
	@RequestMapping("/teachTable")  
	public String teachTable(HttpSession session){  
		List<Map<String, Object>> findUserList=userService.teachTable();
		session.setAttribute("findTeachList",findUserList);
		return "sys/teachTable";  
	}  
	/**
	 * 器材列表
	 * @param session
	 * @return
	 */
	@RequestMapping("/apparatusTable")  
	public String apparatusTable(HttpSession session){  
		List<Map<String, Object>> findUserList=userService.apparatusTable();
		session.setAttribute("findApparatusList",findUserList);
		return "sys/apparatusTable";  
	}  
	/**
	 * 退出
	 * @return
	 */
    @RequestMapping("/exit")  
    public String exit(HttpSession session){  
    	session.invalidate();
    	return "login";
    } 
    /**
     * 统计性别比例
     * @return
     */
    @ResponseBody
    @RequestMapping("/getSex")  
    public List<User> getSex(){  
    	List<User> list=userService.getSex();
    	return list;  
    }   
    /**
     * 删除用户
     * @return
     */
    @ResponseBody
    @RequestMapping("/delUser")  
    public String delUser(Integer id){  
    	userService.delUser(id);
    	return "true";  
    }   
    /**
     * 删除教练
     * @return
     */
    @ResponseBody
    @RequestMapping("/delTeach")  
    public String delTeach(Integer id){  
    	userService.delTeach(id);
    	return "true";  
    }   
    /**
     * 删除器材
     * @return
     */
    @ResponseBody
    @RequestMapping("/delApp")  
    public String delApp(Integer id){  
    	userService.delApp(id);
    	return "true";  
    }   
    /**
     * 更新用户信息
     * @return
     */
    @RequestMapping("/upUser")  
    public String upUser(Integer id,String account,Integer sex,Integer age,String name,String pwd,String tel,String address,HttpSession session){  
    	
    	List list=new ArrayList();
    	list.add(id);
    	list.add(account);
    	list.add(sex);
    	list.add(age);
    	list.add(name);
    	list.add(pwd);
    	list.add(tel);
    	list.add(address);
    	session.setAttribute("upList", list);
    	return "sys/upUser";  
    }  
    /**
     * 更新教练信息
     * @return
     */
    @RequestMapping("/upTeach")  
    public String upTeach(Integer id,String tname,Integer cid,String ttel,String taddress,HttpSession session){  
    	
    	List list=new ArrayList();
    	list.add(id);
    	list.add(tname);
    	list.add(cid);
    	list.add(ttel);
    	list.add(taddress);
    	session.setAttribute("upTeachList", list);
    	return "sys/upTeach";  
    }  
    /**
     * 添加用户
     * @param user
     * @return
     */
    @ResponseBody
    @RequestMapping("/registerUser")  
    public String registerUser(User user){  
    	List<User> id=userService.findAccount(user.getAccount());
    	if(id.size()!=0){
    		return "false";
    	}
    	userService.registerUser(user);
    	return "true";  
    }   
    @RequestMapping("/addUser")  
    public String addUser(){  
    	return "sys/addUser";  
    }   
    /**
     * 添加教练
     * @return
     */
    @RequestMapping("/addTeach")  
    public String addTeach(){  
    	return "sys/addTeach";  
    }   
    /**
     * 添加器材
     * @return
     */
    @RequestMapping("/addApp")  
    public String addApp(){  
    	return "sys/addApp";  
    }   
    /**
     * 更新用户信息
     * @return
     */
    @ResponseBody
    @RequestMapping("/upUserInfo")  
    public String upUserInfo(Integer id,String account,Integer sex,Integer age,String name,String pwd,String tel,String address){  
    	userService.updateUserInfo(id,account,sex,age,name,pwd,tel,address);
    	return "true";  
    }   
    /**
     * 更新教练信息
     * @return
     */
    @ResponseBody
    @RequestMapping(value="/upTeachInfo",method=RequestMethod.POST)  
    public String upTeach(Integer id,String tname,Integer cid,String ttel,String taddress){  
    	userService.upTeach(id,tname,cid,ttel,taddress);
    	return "true";  
    }   
    @ResponseBody
    @RequestMapping("/addTeachInfo")  
    public String addTeachInfo(Teach teach){  
    	userService.addTeachInfo(teach);
    	return "true";  
    }   
    @ResponseBody
    @RequestMapping("/addAppInfo")  
    public String addAppInfo(String aname){  
    	userService.addAppInfo(aname);
    	return "true";  
    }   
    @RequestMapping("/actions")  
    public String loginForward(String name){  
    	String url="config"+name;
		return url;
    }  
}
