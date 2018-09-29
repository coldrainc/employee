package com.jxufe.model;

import java.util.Calendar;
import java.util.Date;

public class Resume {
	private int resumeId;
	private String number;
	private String name;
	private int age;
	private String phone;
	private String mail;
	private String gender;
	private String residence;
	private int expectSalary;
	private String workPlace;
	private String workFunction;
	private String profession;
	private String workType;
	private int workExp;
	private String projectExp;
	private String major;
	private String skills;
	private String additionalInfo;
	private String university;
	private String status;
	private String position;
	private String tximage;

	public String getTximage() {
		return tximage;
	}

	public void setTximage(String tximage) {
		this.tximage = tximage;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getUniversity() {
		return university;
	}

	public void setUniversity(String university) {
		this.university = university;
	}

	public Resume() {
	}

	public Resume(String number, String name, int age, String phone,
			String mail, String gender, String residence) {
		this.number = number;
		this.name = name;
		this.age = age;
		this.phone = phone;
		this.mail = mail;
		this.gender = gender;
		this.residence = residence;
	}

	public Resume(String name, int age, String phone, String mail,
			String gender, String residence) {
		this.name = name;
		this.age = age;
		this.phone = phone;
		this.mail = mail;
		this.gender = gender;
		this.residence = residence;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public int getResumeId() {
		return resumeId;
	}

	public String getName() {
		return name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getPhone() {
		return phone;
	}

	public String getMail() {
		return mail;
	}

	public String getGender() {
		return gender;
	}

	public String getResidence() {
		return residence;
	}

	public int getExpectSalary() {
		return expectSalary;
	}

	public void setExpectSalary(int expectSalary) {
		this.expectSalary = expectSalary;
	}

	public String getWorkPlace() {
		return workPlace;
	}

	public String getWorkFunction() {
		return workFunction;
	}

	public String getProfession() {
		return profession;
	}

	public String getWorkType() {
		return workType;
	}

	public int getWorkExp() {
		return workExp;
	}

	public void setWorkExp(int workExp) {
		this.workExp = workExp;
	}

	public String getProjectExp() {
		return projectExp;
	}

	public String getMajor() {
		return major;
	}

	public String getSkills() {
		return skills;
	}

	public String getAdditionalInfo() {
		return additionalInfo;
	}

	public void setResumeId(int resumeId) {
		this.resumeId = resumeId;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public void setResidence(String residence) {
		this.residence = residence;
	}

	public void setWorkPlace(String workPlace) {
		this.workPlace = workPlace;
	}

	public void setWorkFunction(String workFunction) {
		this.workFunction = workFunction;
	}

	public void setProfession(String profession) {
		this.profession = profession;
	}

	public void setWorkType(String workType) {
		this.workType = workType;
	}

	public void setProjectExp(String projectExp) {
		this.projectExp = projectExp;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public void setSkills(String skills) {
		this.skills = skills;
	}

	public void setAdditionalInfo(String additionalInfo) {
		this.additionalInfo = additionalInfo;
	}

	public String toString() {
		return "resumeId:" + resumeId + "\nname:" + name + "\nage:" + age
				+ "\nphone:" + phone;
	}
}
