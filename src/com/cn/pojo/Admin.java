package com.cn.pojo;

public class Admin {
Integer id;
String name;
String pwd;
String lastlogintime;

public String getLastlogintime() {
	return lastlogintime;
}
public void setLastlogintime(String lastlogintime) {
	this.lastlogintime = lastlogintime;
}
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
public void setPwd(String pwd) {
	this.pwd = pwd;
}

}
