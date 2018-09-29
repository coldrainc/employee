package com.jxufe.action;

import java.util.Map;

import com.jxufe.dao.UserDao;
import com.jxufe.model.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {
	private String number;
	private String password;
	private int permission;
	private User user;
	private UserDao userDao;
	private String result;

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

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
		if (user != null) {
			/*System.out.println("用户存在");*/
			if (user.getPassword().equals(password)) {
				if (user.getPermission() == 3) {
					Map session = ActionContext.getContext().getSession();
					session.put("loginUser", user);
					/*HttpServletResponse response = ServletActionContext
							.getResponse();
					Map<String, Object> map = new HashMap<String, Object>();
					map.put("code", 1);
					JSONObject json = JSONObject.fromObject(map);
					result = json.toString();
					System.out.println(result);*/
					/*response.setContentType("text/html;charset=utf-8");
					PrintWriter out = response.getWriter();
					out.print("交互数据");*/
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
