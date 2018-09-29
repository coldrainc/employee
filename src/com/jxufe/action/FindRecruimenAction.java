package com.jxufe.action;

import com.jxufe.dao.RecruimentDao;
import com.jxufe.model.Recruiment;
import com.opensymphony.xwork2.ActionSupport;

public class FindRecruimenAction extends ActionSupport {
	private RecruimentDao recruimentDao;

	public RecruimentDao getRecruimentDao() {
		return recruimentDao;
	}

	public void setRecruimentDao(RecruimentDao recruimentDao) {
		this.recruimentDao = recruimentDao;
	}

	@Override
	public String execute() throws Exception {
		Recruiment recruiment = new Recruiment();
		return null;
	}
}
