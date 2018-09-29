package com.jxufe.action;

import java.util.Date;

import com.jxufe.dao.EnterpriseDao;
import com.jxufe.model.Enterprise;
import com.opensymphony.xwork2.ActionSupport;

public class ListEnterpriseAction extends ActionSupport {
	private EnterpriseDao enterpriseDao;

	public EnterpriseDao getEnterpriseDao() {
		return enterpriseDao;
	}

	public void setEnterpriseDao(EnterpriseDao enterpriseDao) {
		this.enterpriseDao = enterpriseDao;
	}

	@Override
	public String execute() throws Exception {
		/*System.out.println("hello");
		Enterprise enterprise = new Enterprise();
		enterprise.setEnterRegisterNum("123");
		enterprise.setEnterName("问财公司");
		enterprise.setEnterRegisterAddr("上海浦江");
		Date date = new Date();
		enterprise.setEnterFoundTime(date);
		enterpriseDao.delete(enterprise);*/
		return null;
	}
}
