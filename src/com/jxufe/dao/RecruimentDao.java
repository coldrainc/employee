package com.jxufe.dao;

import java.util.List;

import com.jxufe.model.Recruiment;


public interface RecruimentDao {
	public Recruiment get(int id);
	public List<Recruiment> findAllRecruiment();
	public List<Recruiment> listRecruiment(int pageNumber,int pageSize);
//	public void delete(String enterRegisterNum);
//	public void delete(Recruiment enterprise);
	public List<Recruiment> findByPost(String post);
	public int save(Recruiment recruiment);
	public void update(Recruiment recruiment);
	public List<Recruiment> bestRecruiment(int pageNumber, int pageSize);
	public List<Recruiment> allRecruimentByPost(String post, int pageNumber,int pageSize);
	public List<Recruiment> allEnterpriseByValue(String value, int pageNumber,int pageSize);
}
