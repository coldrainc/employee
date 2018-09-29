package com.jxufe.model;

public class Recruiment {
	private int id;
	private String post;
	private String salary;
	private String workPlace;
	private String workTime;
	private String education;
	private String company;
	private String welfare;

	public Recruiment() {
	}

	public Recruiment(String post, String salary, String workPlace,
			String workTime, String education, String company, String welfare) {
		this.post = post;
		this.salary = salary;
		this.workPlace = workPlace;
		this.workTime = workTime;
		this.education = education;
		this.company = company;
		this.welfare = welfare;
	}

	public int getId() {
		return id;
	}

	public String getPost() {
		return post;
	}

	public String getSalary() {
		return salary;
	}

	public String getWorkPlace() {
		return workPlace;
	}

	public String getWorkTime() {
		return workTime;
	}

	public String getEducation() {
		return education;
	}

	public String getCompany() {
		return company;
	}

	public String getWelfare() {
		return welfare;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setPost(String post) {
		this.post = post;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}

	public void setWorkPlace(String workPlace) {
		this.workPlace = workPlace;
	}

	public void setWorkTime(String workTime) {
		this.workTime = workTime;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public void setWelfare(String welfare) {
		this.welfare = welfare;
	}

}
