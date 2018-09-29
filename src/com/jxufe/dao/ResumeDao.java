package com.jxufe.dao;

import java.util.List;

import com.jxufe.model.Resume;

public interface ResumeDao {
	public Resume get(int resumeId);
	public List<Resume> findAllResume();
	public Resume findByName(String username);
	public Resume findByNumber(String number);
	public void delete(String number);
	public void delete(Resume resume);
	public int save(Resume resume);
	public void update(Resume resume);
}
