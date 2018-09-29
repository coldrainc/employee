package com.jxufe.action;

import java.util.Map;

import com.jxufe.dao.ResumeDao;
import com.jxufe.model.Resume;
import com.jxufe.model.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UpdateOtherAction extends ActionSupport {
	private int workExp;
	private String projectExp;
	private ResumeDao resumeDao;

	public String getProjectExp() {
		return projectExp;
	}

	public void setProjectExp(String projectExp) {
		this.projectExp = projectExp;
	}

	public int getWorkExp() {
		return workExp;
	}

	public ResumeDao getResumeDao() {
		return resumeDao;
	}

	public void setWorkExp(int workExp) {
		this.workExp = workExp;
	}

	public void setResumeDao(ResumeDao resumeDao) {
		this.resumeDao = resumeDao;
	}
	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}
	public String updateWorkExp() throws Exception {
		Map session = ActionContext.getContext().getSession();
		User user = (User) session.get("loginUser");
		String number = user.getNumber();
		Resume resume = resumeDao.findByNumber(number);
		resume.setWorkExp(workExp);
		resumeDao.update(resume);
		return null;
	}

	public String updateProjectExp() throws Exception {
		Map session = ActionContext.getContext().getSession();
		User user = (User) session.get("loginUser");
		String number = user.getNumber();
		Resume resume = resumeDao.findByNumber(number);
		resume.setProjectExp(projectExp);
		resumeDao.update(resume);
		return null;
	}
}
