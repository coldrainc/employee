package com.jxufe.action;

import java.util.HashMap;
import java.util.Map;

import net.sf.json.JSONObject;

import com.jxufe.dao.ResumeDao;
import com.jxufe.model.Resume;
import com.jxufe.model.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UpdateIntentionAction extends ActionSupport {
	private String expectSalary;
	private String workPlace;
	private String workFunction;
	private String position;
	private String profession;
	private String workType;
	private ResumeDao resumeDao;

	public String getExpectSalary() {
		return expectSalary;
	}

	public String getWorkPlace() {
		return workPlace;
	}

	public String getWorkFunction() {
		return workFunction;
	}

	public String getPosition() {
		return position;
	}

	public String getProfession() {
		return profession;
	}

	public String getWorkType() {
		return workType;
	}

	public ResumeDao getResumeDao() {
		return resumeDao;
	}

	public void setExpectSalary(String expectSalary) {
		this.expectSalary = expectSalary;
	}

	public void setWorkPlace(String workPlace) {
		this.workPlace = workPlace;
	}

	public void setWorkFunction(String workFunction) {
		this.workFunction = workFunction;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public void setProfession(String profession) {
		this.profession = profession;
	}

	public void setWorkType(String workType) {
		this.workType = workType;
	}

	public void setResumeDao(ResumeDao resumeDao) {
		this.resumeDao = resumeDao;
	}

	@Override
	public String execute() throws Exception {
		System.out.println("hello");
		Map session = ActionContext.getContext().getSession();
		User user = (User) session.get("loginUser");
		String number = user.getNumber();
		Resume resume = resumeDao.findByNumber(number);
		resume.setPosition(position);
		resume.setWorkPlace(workPlace);
		resume.setWorkFunction(workFunction);
		resume.setProfession(profession);
		resume.setWorkType(workType);
		resumeDao.update(resume);
		System.out.println("更新成功");
		return null;
	}
}
