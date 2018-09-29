package com.jxufe.dao.impl;

import java.util.List;

import com.jxufe.dao.RecruimentDao;
import com.jxufe.model.Enterprise;
import com.jxufe.model.Recruiment;
import com.jxufe.util.ExtendHibernateDaoSupport;

public class RecruimentDaoImpl extends ExtendHibernateDaoSupport implements RecruimentDao{

	@Override
	public Recruiment get(int id) {
		return getHibernateTemplate().get(Recruiment.class, id);
	}

	@Override
	public List<Recruiment> findAllRecruiment() {
		return getHibernateTemplate().find("from Recruiment");
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Recruiment> listRecruiment(int pageNumber, int pageSize) {
		return findBypage("from Recruiment", pageNumber*pageSize, pageSize);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Recruiment> findByPost(String post) {
		return getHibernateTemplate().find("from Recruiment as n where n.post like '%" + post + "%'");
	}

	@Override
	public int save(Recruiment recruiment) {
		return (Integer) getHibernateTemplate().save(recruiment);
	}

	@Override
	public void update(Recruiment recruiment) {
		getHibernateTemplate().update(recruiment);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Recruiment> bestRecruiment(int pageNumber, int pageSize) {
	 return (List<Recruiment>)getHibernateTemplate().find("from Recruiment as n order by n.salary desc");
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Recruiment> allRecruimentByPost(String post, int pageNumber,
			int pageSize) {
		return findBypage("from Recruiment as n where n.post like '%" + post + "%'", pageNumber*pageSize, pageSize);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Recruiment> allEnterpriseByValue(String value, int pageNumber,
			int pageSize) {
		return findBypage("from Recruiment as n where n.post like '%" + value + "%' or n.workPlace like '%" + value + "'% or n.company like '%" + value + "%'", pageNumber*pageSize, pageSize);
	}

}
