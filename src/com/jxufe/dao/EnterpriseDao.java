package com.jxufe.dao;

import java.util.List;

import com.jxufe.model.Enterprise;

public interface EnterpriseDao {
	public Enterprise get(int enterId);
	public List<Enterprise> findAllEnterprise();
	public List<Enterprise> listEnterprise(int pageNumber,int pageSize);
	public Enterprise findByNumber(String number);
	public void delete(String enterRegisterNum);
	public void delete(Enterprise enterprise);
	public List<Enterprise> findByName(String enterName);
	public int save(Enterprise enterprise);
	public void update(Enterprise enterprise);
	public List<Enterprise> bestEnterprise(int pageNumber, int pageSize);
	public List<Enterprise> allEnterpriseByName(String enterName, int pageNumber,int pageSize);
	public List<Enterprise> allEnterpriseByValue(String value, int pageNumber,int pageSize);
	public Enterprise getAuditEnterprise();
}
