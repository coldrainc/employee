package com.jxufe.dao.impl;

import java.util.List;

import com.jxufe.dao.EnterpriseDao;
import com.jxufe.model.Enterprise;
import com.jxufe.util.ExtendHibernateDaoSupport;

public class EnterpriseDaoImpl extends ExtendHibernateDaoSupport implements EnterpriseDao{

	@Override
	public Enterprise get(int enterId) {
		return getHibernateTemplate().get(Enterprise.class, enterId);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Enterprise> findAllEnterprise() {
		return (List<Enterprise>)getHibernateTemplate().find("from Enterprise");
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Enterprise> listEnterprise(int pageNumber, int pageSize) {
		return findBypage("from User", pageNumber*pageSize,pageSize);
	}

	@SuppressWarnings("unchecked")
	@Override
	public Enterprise findByNumber(String number) {
		List<Enterprise> list = getHibernateTemplate().find("from Enterprise as n where n.enterRegisterNum=?",number);
		return list.size()>0?list.get(0):null;
	}

	@Override
	public void delete(String enterRegisterNum) {
		Enterprise enterprise = findByNumber(enterRegisterNum);
		delete(enterprise);
	}

	@Override
	public void delete(Enterprise enterprise) {
		enterprise = findByNumber(enterprise.getEnterRegisterNum());
		getHibernateTemplate().delete(enterprise);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Enterprise> findByName(String enterName) {
		return getHibernateTemplate().find("from Enterprise as n where n.enterName like '%" + enterName + "%'");
	}

	@Override
	public int save(Enterprise enterprise) {
		System.out.println(enterprise.getEnterRegisterNum());
		return (Integer) getHibernateTemplate().save(enterprise);
	}

	@Override
	public void update(Enterprise enterprise) {
		getHibernateTemplate().update(enterprise);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Enterprise> bestEnterprise(int pageNumber, int pageSize) {
		return (List<Enterprise>)getHibernateTemplate().find("from Enterprise as n order by n.priority desc");
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Enterprise> allEnterpriseByName(String enterName, int pageNumber, int pageSize) {
		return findBypage("from Enterprise as n where n.enterName like '%" + enterName + "%'", pageNumber*pageSize, pageSize);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Enterprise> allEnterpriseByValue(String value, int pageNumber, int pageSize) {
		return findBypage("from Enterprise as n where n.enterName like '%" + value + "%' or n.ceo like '%" + value + "%' or n.enterRegisterAddr like '%" + value + "%'", pageNumber*pageSize, pageSize);
	}

	//返回未审核的企业信息
	@SuppressWarnings("unchecked")
	@Override
	public Enterprise getAuditEnterprise() {
		List<Enterprise> list = getHibernateTemplate().find("from Enterprise as n where n.audit=0");
		return list.size()>0 ? list.get(0) : null;
	}
}
