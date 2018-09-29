package com.jxufe.dao.impl;

import java.util.List;

import com.jxufe.dao.ResumeDao;
import com.jxufe.model.Resume;
import com.jxufe.model.User;
import com.jxufe.util.ExtendHibernateDaoSupport;

public class ResumeDaoImpl extends ExtendHibernateDaoSupport implements
		ResumeDao {

	//通过id获得简历
	@Override
	public Resume get(int resumeId) {
		System.out.println(resumeId);
		return (Resume)getHibernateTemplate().get(Resume.class, resumeId);
	}
	
	//返回所有的简历
	@SuppressWarnings("unchecked")
	@Override
	public List<Resume> findAllResume() {
		return (List<Resume>)getHibernateTemplate().find("from Resume");
	}
	
	//通过姓名获得简历
	@Override
	public Resume findByName(String username) {
		return (Resume) getHibernateTemplate().find("from Resuem as n where n.name=?",username);
	}
	
	//删除简历
	@Override
	public void delete(Resume resume) {
		getHibernateTemplate().delete(resume);
	}
	
	//保存简历
	@Override
	public int save(Resume resume) {
		System.out.println("ff");
		return (Integer) getHibernateTemplate().save(resume);
	}

	//更新简历
	@Override
	public void update(Resume resume) {
		Resume r = findByNumber(resume.getNumber());
		resume.setResumeId(r.getResumeId());
		getHibernateTemplate().update(resume);
	}
	
	//通过学号查找简历
	@Override
	public Resume findByNumber(String number) {
		List<Resume> list =  getHibernateTemplate().find("from Resume as n where n.number=?",number);
		return list.size()>0 ? list.get(0) : null;
	}

	//通过学号删除一张简历
	@Override
	public void delete(String number) {
		Resume resume = findByNumber(number);
		getHibernateTemplate().delete(resume);
	}

}
