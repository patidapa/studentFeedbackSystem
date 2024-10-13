package com.dto;

public class Student {
private String name;
private String regino;
private String password;

public Student(String name,String regino, String password) {
	super();
	this.name=name;
	this.regino = regino;
	this.password = password;
}
public String getName()
{
	return name;
}
public void setName(String name)
{
	this.name=name;
}
public String getRegino() {
	return regino;
}
public void setRegino(String regino) {
	this.regino = regino;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}

}
