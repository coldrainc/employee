package com.jxufe.model;

import java.util.Date;

public class Enterprise {
	private int enterId;
	private String enterRegisterNum;
	private String enterRegisterAddr;
	private String enterLawyer;
	private int enterRegisterWage;
	private Date enterFoundTime;
	private String ceo;
	private int degreeDemand;
	private double perWage;
	private int enterWorkFiled;
	private int workExp;
	private double priority;
	private String enterName;
	private int status;
	private int audit;

	public int getAudit() {
		return audit;
	}

	public void setAudit(int audit) {
		this.audit = audit;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public Enterprise() {
	}

	public Enterprise(String enterRegisterNum, String enterRegisterAddr,
			String enterLawyer, int enterRegisterWage, Date enterFoundTime,
			String ceo, int degreeDemand, double perWage, int enterWorkFiled,
			int workExp, double priority, String enterName) {
		this.enterRegisterNum = enterRegisterNum;
		this.enterRegisterAddr = enterRegisterAddr;
		this.enterLawyer = enterLawyer;
		this.enterRegisterWage = enterRegisterWage;
		this.enterFoundTime = enterFoundTime;
		this.ceo = ceo;
		this.degreeDemand = degreeDemand;
		this.perWage = perWage;
		this.enterWorkFiled = enterWorkFiled;
		this.workExp = workExp;
		this.priority = priority;
		this.enterName = enterName;
	}

	public String getEnterName() {
		return enterName;
	}

	public void setEnterName(String enterName) {
		this.enterName = enterName;
	}

	public int getEnterId() {
		return enterId;
	}

	public String getEnterRegisterNum() {
		return enterRegisterNum;
	}

	public String getEnterRegisterAddr() {
		return enterRegisterAddr;
	}

	public String getEnterLawyer() {
		return enterLawyer;
	}

	public int getEnterRegisterWage() {
		return enterRegisterWage;
	}

	public Date getEnterFoundTime() {
		return enterFoundTime;
	}

	public String getCeo() {
		return ceo;
	}

	public int getDegreeDemand() {
		return degreeDemand;
	}

	public double getPerWage() {
		return perWage;
	}

	public int getEnterWorkFiled() {
		return enterWorkFiled;
	}

	public int getWorkExp() {
		return workExp;
	}

	public double getPriority() {
		return priority;
	}

	public void setEnterId(int enterId) {
		this.enterId = enterId;
	}

	public void setEnterRegisterNum(String enterRegisterNum) {
		this.enterRegisterNum = enterRegisterNum;
	}

	public void setEnterRegisterAddr(String enterRegisterAddr) {
		this.enterRegisterAddr = enterRegisterAddr;
	}

	public void setEnterLawyer(String enterLawyer) {
		this.enterLawyer = enterLawyer;
	}

	public void setEnterRegisterWage(int enterRegisterWage) {
		this.enterRegisterWage = enterRegisterWage;
	}

	public void setEnterFoundTime(Date enterFoundTime) {
		this.enterFoundTime = enterFoundTime;
	}

	public void setCeo(String ceo) {
		this.ceo = ceo;
	}

	public void setDegreeDemand(int degreeDemand) {
		this.degreeDemand = degreeDemand;
	}

	public void setPerWage(double perWage) {
		this.perWage = perWage;
	}

	public void setEnterWorkFiled(int enterWorkFiled) {
		this.enterWorkFiled = enterWorkFiled;
	}

	public void setWorkExp(int workExp) {
		this.workExp = workExp;
	}

	public void setPriority(double priority) {
		this.priority = priority;
	}

}
