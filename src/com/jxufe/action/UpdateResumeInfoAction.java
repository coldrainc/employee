package com.jxufe.action;

import java.util.HashMap;
import java.util.Map;

import net.sf.json.JSONObject;

import com.jxufe.dao.ResumeDao;
import com.jxufe.dao.UserDao;
import com.jxufe.model.Resume;
import com.jxufe.model.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UpdateResumeInfoAction extends ActionSupport {
	private String name;
	private String gender;
	private String phone;
	private String status;
	private String mail;
	private String residence;
	private String university;
	private int age;
	private ResumeDao resumeDao;
	private String result;
	private UserDao userDao;
	private String major;

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getName() {
		return name;
	}

	public String getGender() {
		return gender;
	}

	public String getPhone() {
		return phone;
	}

	public String getStatus() {
		return status;
	}

	public String getMail() {
		return mail;
	}

	public String getResidence() {
		return residence;
	}

	public String getUniversity() {
		return university;
	}

	public int getAge() {
		return age;
	}

	public ResumeDao getResumeDao() {
		return resumeDao;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public void setResidence(String residence) {
		this.residence = residence;
	}

	public void setUniversity(String university) {
		this.university = university;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public void setResumeDao(ResumeDao resumeDao) {
		this.resumeDao = resumeDao;
	}

	@Override
	public String execute() throws Exception {
		/*
		 * System.out.println(name + " " + gender + " " + phone + " " + status +
		 * " " + mail + " " + residence + " " + university + " " + age);
		 */

		Map session = ActionContext.getContext().getSession();
		User user = (User) session.get("loginUser");
		String number = user.getNumber();
		Resume resume = resumeDao.findByNumber(number);
		resume.setName(name);
		resume.setGender(gender);
		resume.setPhone(phone);
		resume.setSkills(status);
		resume.setMail(mail);
		resume.setResidence(residence);
		resume.setUniversity(university);
		resume.setAge(age);
		resume.setMajor(major);

		resumeDao.update(resume);
		user.setUsername(name);
		session.put("loginUser", user);
		userDao.update(user);
		Map<String, Object> map = new HashMap<String, Object>();
		JSONObject json = JSONObject.fromObject(map);
		result = json.toString();
		System.out.println(result);
		return SUCCESS;
	}
}
