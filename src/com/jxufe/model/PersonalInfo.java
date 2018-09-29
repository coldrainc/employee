package com.jxufe.model;

public class PersonalInfo {
	private String name;
	private String insitute;
	private String school;
	private String workExp;
	private String workType;
	private String hobby;
	private String programExp;
	private int workTime;
	private String honor;
	private String image;
	private int id;
	private int number;
	
	public PersonalInfo(String name, String insitute, String school,
			String workExp, String workType, String hobby, String programExp,
			int workTime, String honor, String image, int number) {
		super();
		this.name = name;
		this.insitute = insitute;
		this.school = school;
		this.workExp = workExp;
		this.workType = workType;
		this.hobby = hobby;
		this.programExp = programExp;
		this.workTime = workTime;
		this.honor = honor;
		this.image = image;
		this.number = number;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getInsitute() {
		return insitute;
	}
	public void setInsitute(String insitute) {
		this.insitute = insitute;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getWorkExp() {
		return workExp;
	}
	public void setWorkExp(String workExp) {
		this.workExp = workExp;
	}
	public String getWorkType() {
		return workType;
	}
	public void setWorkType(String workType) {
		this.workType = workType;
	}
	public String getHobby() {
		return hobby;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
	public String getProgramExp() {
		return programExp;
	}
	public void setProgramExp(String programExp) {
		this.programExp = programExp;
	}
	public int getWorkTime() {
		return workTime;
	}
	public void setWorkTime(int workTime) {
		this.workTime = workTime;
	}
	public String getHonor() {
		return honor;
	}
	public void setHonor(String honor) {
		this.honor = honor;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	
	
}
