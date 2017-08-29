package com.cn.pojo;

import java.util.List;

public class User {
private Integer id;
private String name;
private String pwd;
private String account;
private String tel;
private String address;
private Integer age;
private Integer sex;
private Integer uclass;
private Integer uteach;
private List<Teach> teachs;
private List<Course> courses;

public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getPwd() {
	return pwd;
}

public Integer getAge() {
	return age;
}
public void setAge(Integer age) {
	this.age = age;
}
public void setPwd(String pwd) {
	this.pwd = pwd;
}
public String getAccount() {
	return account;
}
public void setAccount(String account) {
	this.account = account;
}
public String getTel() {
	return tel;
}
public void setTel(String tel) {
	this.tel = tel;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public Integer getSex() {
	return sex;
}
public void setSex(Integer sex) {
	this.sex = sex;
}
public Integer getUclass() {
	return uclass;
}
public void setUclass(Integer uclass) {
	this.uclass = uclass;
}
public Integer getUteach() {
	return uteach;
}
public void setUteach(Integer uteach) {
	this.uteach = uteach;
}
public List<Teach> getTeachs() {
	return teachs;
}
public void setTeachs(List<Teach> teachs) {
	this.teachs = teachs;
}
public List<Course> getCourses() {
	return courses;
}
public void setCourses(List<Course> courses) {
	this.courses = courses;
}



}
