package com.jxufe.dao;

import java.util.List;

import com.jxufe.model.User;

public interface UserDao {
	public User get(int id);
	public List<User> findAllUser();
	public User findByNumber(String number);
	public void delete(String stuNum);
	public void delete(User user);
	public List<User> findByName(String username);
	public int save(User user);
	public void update(User user);
}
