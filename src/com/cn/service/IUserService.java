package com.cn.service;


import java.util.List;
import java.util.Map;

import com.cn.pojo.Admin;
import com.cn.pojo.Teach;
import com.cn.pojo.User;
 
public interface IUserService {

public User userLogin(String account, String pwd);

public List<Map<String, Object>> findUserByAccount(String account);

public List<Map<String, Object>> findClass();

public List<Map<String, Object>> findSeTeach(Integer id);

public void chooseTeach(Integer id, Integer cid,Integer uid);

public void updateUserInfo(Integer id,String account, Integer sex, Integer age, String name,
		String pwd, String tel, String address);

public Admin adminLogin(String name, String pwd);

public void setTime(String format);

public List<Map<String, Object>> countUser();

public List<Map<String, Object>> countTeach();

public List<Map<String, Object>> countApparatus();

public List<User> getSex();

public List<Map<String, Object>> findUser();

public List<Map<String, Object>> teachTable();

public List<Map<String, Object>> apparatusTable();

public List<User> findAccount(String account);

public void registerUser(User user);

public void delUser(Integer id);

public void addTeachInfo(Teach teach);

public void delTeach(Integer id);

public void upTeach(Integer id,String tname, Integer cid, String ttel, String taddress);

public void addAppInfo(String aname);

public void delApp(Integer id);



}