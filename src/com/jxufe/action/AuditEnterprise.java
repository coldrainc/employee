package com.jxufe.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;

import com.jxufe.dao.EnterpriseDao;
import com.jxufe.model.Enterprise;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class AuditEnterprise extends ActionSupport {
	private String enterRegisterNum;
	private Enterprise enterprise;
	private EnterpriseDao enterpriseDao;
	private String result;

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getEnterRegisterNum() {
		return enterRegisterNum;
	}

	public void setEnterRegisterNum(String enterRegisterNum) {
		this.enterRegisterNum = enterRegisterNum;
	}

	public Enterprise getEnterprise() {
		return enterprise;
	}

	public void setEnterprise(Enterprise enterprise) {
		this.enterprise = enterprise;
	}

	public EnterpriseDao getEnterpriseDao() {
		return enterpriseDao;
	}

	public void setEnterpriseDao(EnterpriseDao enterpriseDao) {
		this.enterpriseDao = enterpriseDao;
	}

	@SuppressWarnings("unchecked")
	@Override
	public String execute() throws Exception {
		enterprise = enterpriseDao.getAuditEnterprise();
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("enterprise", enterprise);
		return null;
	}

	public String auditPass() {
		enterprise = enterpriseDao.findByNumber(enterRegisterNum);
		enterprise.setAudit(1);// 设置为已审核
		enterprise.setStatus(1);
		enterpriseDao.update(enterprise);
		enterprise = enterpriseDao.getAuditEnterprise();
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("enterprise", enterprise);
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("enterName", enterprise.getEnterName());
		map.put("enterRegisterNum", enterprise.getEnterRegisterNum());
		map.put("enterRegisterAddr", enterprise.getEnterRegisterAddr());
		map.put("enterLawyer", enterprise.getEnterLawyer());
		map.put("enterRegisterWage", enterprise.getEnterRegisterWage());
		map.put("enterFoundTime", enterprise.getEnterFoundTime().toString());
		map.put("ceo", enterprise.getCeo());
		map.put("degreeDemand", enterprise.getDegreeDemand() + "");
		map.put("perWage", enterprise.getPerWage() + "");
		map.put("workExp", enterprise.getWorkExp() + "");
		
		JSONObject json = JSONObject.fromObject(map);
		result = json.toString();
		System.out.println(result);
		return SUCCESS;
	}

	public String auditFail() {
		enterprise = enterpriseDao.findByNumber(enterRegisterNum);
		enterprise.setAudit(1);
		enterprise.setStatus(0);
		enterpriseDao.update(enterprise);
		enterprise = enterpriseDao.getAuditEnterprise();
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("enterprise", enterprise);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("enterName", enterprise.getEnterName());
		map.put("enterRegisterNum", enterprise.getEnterRegisterNum());
		map.put("enterRegisterAddr", enterprise.getEnterRegisterAddr());
		map.put("enterLawyer", enterprise.getEnterLawyer());
		map.put("enterRegisterWage", enterprise.getEnterRegisterWage());
		map.put("enterFoundTime", enterprise.getEnterFoundTime().toString());
		map.put("ceo", enterprise.getCeo());
		map.put("degreeDemand", enterprise.getDegreeDemand() + "");
		map.put("perWage", enterprise.getPerWage() + "");
		map.put("workExp", enterprise.getWorkExp() + "");
		
		JSONObject json = JSONObject.fromObject(map);
		result = json.toString();
		System.out.println(result);
		
		return SUCCESS;
	}
}
