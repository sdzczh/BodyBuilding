package com.cn.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.dao.IUserDao;
import com.cn.pojo.Admin;
import com.cn.pojo.Teach;
import com.cn.pojo.User;
import com.cn.service.IUserService;

@Service("userService")
public class UserServiceImpl implements IUserService {

	@Resource
    private IUserDao userDao;

	@Override
	public User userLogin(String account, String pwd) {
		return userDao.userLogin(account,pwd);
	}

	@Override
	public List<Map<String, Object>> findUserByAccount(String account) {
		return userDao.findUserByAccount(account);
	}

	@Override
	public List<Map<String, Object>> findClass() {
		return userDao.findClass();
	}

	@Override
	public List<Map<String, Object>> findSeTeach(Integer id) {
		return userDao.findSeTeach(id);
	}

	@Override
	public void chooseTeach(Integer id, Integer cid,Integer uid) {
		userDao.chooseTeach(id,cid,uid);
	}

	@Override
	public void updateUserInfo(Integer id,String account, Integer sex, Integer age,
			String name, String pwd, String tel, String address) {
		userDao.updateUserInfo(id,account,sex,age,name,pwd,tel,address);
	}

	@Override
	public Admin adminLogin(String name, String pwd) {
		return userDao.adminLogin(name,pwd);
	}

	@Override
	public void setTime(String format) {
		userDao.setTime(format);
	}

	@Override
	public List<Map<String, Object>> countUser() {
		return userDao.countUser();
	}

	@Override
	public List<Map<String, Object>> countTeach() {
		return userDao.countTeach();
	}

	@Override
	public List<User> getSex() {
		return userDao.getSex();
	}

	@Override
	public List<Map<String, Object>> findUser() {
		return userDao.findUser();
	}
	@Override
	public List<Map<String, Object>> teachTable() {
		return userDao.teachTable();
	}
	@Override
	public List<Map<String, Object>> apparatusTable() {
		return userDao.apparatusTable();
	}

	@Override
	public List<Map<String, Object>> countApparatus() {
		return userDao.countApparatus();
	}

	@Override
	public List<User> findAccount(String account) {
		return userDao.findAccount(account);
	}

	@Override
	public void registerUser(User user) {
		userDao.registerUser(user);
	}

	@Override
	public void delUser(Integer id) {
		userDao.delUser(id);
	}

	@Override
	public void addTeachInfo(Teach teach) {
		userDao.addTeachInfo(teach);
		
	}

	@Override
	public void delTeach(Integer id) {
		userDao.delTeach(id);
	}

	@Override
	public void upTeach(Integer id, String tname,Integer cid, String ttel, String taddress) {
		userDao.upTeach(id,tname,cid,ttel,taddress);
	}

	@Override
	public void addAppInfo(String aname) {
		userDao.addAppInfo(aname);
	}

	@Override
	public void delApp(Integer id) {
		userDao.delApp(id);
	}



}
