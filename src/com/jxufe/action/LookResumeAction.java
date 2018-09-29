package com.jxufe.action;

import java.util.Map;

import com.jxufe.dao.ResumeDao;
import com.jxufe.dao.UserDao;
import com.jxufe.model.Resume;
import com.jxufe.model.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LookResumeAction extends ActionSupport {
	private UserDao userDao;
	private ResumeDao resumeDao;

	public ResumeDao getResumeDao() {
		return resumeDao;
	}

	public void setResumeDao(ResumeDao resumeDao) {
		this.resumeDao = resumeDao;
	}

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public String execute() throws Exception {
		Map session = ActionContext.getContext().getSession();
		User user = (User) session.get("loginUser");
		String number = user.getNumber();
		Resume resume = resumeDao.findByNumber(number);
		session.put("resume", resume);
		return SUCCESS;
	}
}
