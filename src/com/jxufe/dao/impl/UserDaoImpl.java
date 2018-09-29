package com.jxufe.dao.impl;

import java.util.List;


import com.jxufe.dao.UserDao;
import com.jxufe.model.User;
import com.jxufe.util.ExtendHibernateDaoSupport;

public class UserDaoImpl extends ExtendHibernateDaoSupport implements UserDao{
	
	@Override
	public User get(int id) {
		return (User)getHibernateTemplate().get(User.class, id);
	}
	
	@Override
	public List<User> findAllUser() {
		return (List<User>) getHibernateTemplate().find("from User as n where n.number like '%'");
	}

	//通过学号查询
	@Override
	public User findByNumber(String number) {
		List<User> list = getHibernateTemplate().find("from User as n where n.number=?",number);
		return list.size() > 0 ? list.get(0) : null;
	}

	//通过学号删除
	@Override
	public void delete(String number) {
		getHibernateTemplate().delete(findByNumber(number));
	}

	//删除用户
	@Override
	public void delete(User user) {
		getHibernateTemplate().delete(user);
	}

	@Override
	public List<User> findByName(String username) {
		return (List<User>) getHibernateTemplate().find("from User as n where n.username like ?",username);
	}

	@Override
	public int save(User user) {
		System.out.println(user.getNumber() + " " + user.getPermission() + " " + user.getUsername() + " " + user.getPassword());
		return (Integer) getHibernateTemplate().save(user);
	}

	@Override
	public void update(User user) {
		System.out.println("hello");
		getHibernateTemplate().update(user);
	}

}
