package com.jxufe.action;

import java.util.Map;

import com.jxufe.dao.UserDao;
import com.jxufe.model.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class AdminLoginAction extends ActionSupport{
	private String number;
	private String password;
	private int permission;
	private User user;
	private UserDao userDao;

	public int getPermission() {
		return permission;
	}

	public void setPermission(int permission) {
		this.permission = permission;
	}

	public User getUser() {
		return user;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}


	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public String execute() throws Exception {
		System.out.println(permission);
		if (user != null) {
			if (user.getPassword().equals(password)) {
				if (user.getPermission() == permission) {
					Map session = ActionContext.getContext().getSession();
					session.put("admin", user);
					return SUCCESS;
				}
			}
		}
		return INPUT;
	}

	public void validate() {
		user = userDao.findByNumber(number);
		clearErrors();
		if (user == null) {
			addFieldError("user", "用戶不存在");
		} else if (user.getPermission() != this.permission) {
			addFieldError("permission", "该用户未注册");
		} else if (!user.getPassword().equals(password)) {
			addFieldError("password", "密码错误");
		}
	}
}
