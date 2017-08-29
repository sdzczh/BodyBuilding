package com.cn.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.cn.pojo.Admin;
import com.cn.pojo.Teach;
import com.cn.pojo.User;

public interface IUserDao {

	User userLogin(String account, String pwd);

	List<Map<String, Object>> findUserByAccount(String account);

	List<Map<String, Object>> findClass();

	List<Map<String, Object>> findSeTeach(Integer id);

	void chooseTeach(Integer id, Integer cid,Integer uid);

	void updateUserInfo(@Param("id")Integer id,@Param("account")String account, @Param("sex")Integer sex,@Param("age") Integer age,@Param("name") String name,@Param("pwd") String pwd,@Param("tel") String tel, @Param("address")String address);

	Admin adminLogin(@Param("name")String name, @Param("pwd")String pwd);

	void setTime(String format);

	List<Map<String, Object>> countUser();

	List<Map<String, Object>> countTeach();

	List<Map<String, Object>> countApparatus();

	List<User> getSex();

	List<Map<String, Object>> findUser();

	List<Map<String, Object>> teachTable();

	List<Map<String, Object>> apparatusTable();

	List<User> findAccount(String account);

	void registerUser(User user);

	void delUser(Integer id);

	void addTeachInfo(Teach teach);

	void delTeach(Integer id);

	void upTeach(@Param("id")Integer id,@Param("tname")String tname, @Param("cid")Integer cid, @Param("ttel")String ttel, @Param("taddress")String taddress);

	void addAppInfo(String aname);

	void delApp(Integer id);

}
