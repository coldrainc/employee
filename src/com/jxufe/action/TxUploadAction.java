package com.jxufe.action;

import java.io.File;
import java.io.IOException;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.jxufe.dao.ResumeDao;
import com.jxufe.model.Resume;
import com.jxufe.model.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class TxUploadAction extends ActionSupport {
	private File uploadImage; // 得到上传的文件
	private String uploadImageContentType; // 得到文件的类型
	private String uploadImageFileName; // 得到文件的名称

	private ResumeDao resumeDao;

	public ResumeDao getResumeDao() {
		return resumeDao;
	}

	public void setResumeDao(ResumeDao resumeDao) {
		this.resumeDao = resumeDao;
	}

	public File getUploadImage() {
		return uploadImage;
	}

	public String getUploadImageContentType() {
		return uploadImageContentType;
	}

	public String getUploadImageFileName() {
		return uploadImageFileName;
	}

	public void setUploadImage(File uploadImage) {
		this.uploadImage = uploadImage;
	}

	public void setUploadImageContentType(String uploadImageContentType) {
		this.uploadImageContentType = uploadImageContentType;
	}

	public void setUploadImageFileName(String uploadImageFileName) {
		this.uploadImageFileName = uploadImageFileName;
	}

	@Override
	public String execute() throws Exception {
		System.out.println("fileName:" + this.getUploadImageFileName());
		System.out.println("contentType:" + this.getUploadImageContentType());
		System.out.println("File:" + this.getUploadImage());
		// 获取要保存文件夹的物理路径(绝对路径)
		String realPath = ServletActionContext.getServletContext().getRealPath("/img/touxiang");
		File file = new File(realPath);
		// 测试此抽象路径名表示的文件或目录是否存在。若不存在，创建此抽象路径名指定的目录，包括所有必需但不存在的父目录。
		if (!file.exists())
			file.mkdirs();
		try {
			// 保存文件
			FileUtils.copyFile(uploadImage, new File(file, uploadImageFileName));
			Map session = ActionContext.getContext().getSession();
			Resume resume = (Resume) session.get("resume");
			resume.setTximage(uploadImageFileName);
			resumeDao.update(resume);
			System.out.println("修改成功");
		} catch (IOException e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
}
