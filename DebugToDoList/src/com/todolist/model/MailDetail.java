package com.todolist.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tblMailDetail")
public class MailDetail implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4267453325718913669L;

	@Id
	@GeneratedValue
	@Column(name = "tblMailDetail_MailId")
	private Long mailId;
	
	@Column(name = "tblMailDetail_MailSubject")
	private String mailSubject;
	
	@Column(name = "tblMailDetail_MailTo")
	private String mailTo;
	
	@Column(name = "tblMailDetail_MailMessage")
	private String mailMessage;

	public Long getMailId() {
		return mailId;
	}

	public void setMailId(Long mailId) {
		this.mailId = mailId;
	}

	public String getMailSubject() {
		return mailSubject;
	}

	public void setMailSubject(String mailSubject) {
		this.mailSubject = mailSubject;
	}

	public String getMailTo() {
		return mailTo;
	}

	public void setMailTo(String mailTo) {
		this.mailTo = mailTo;
	}

	public String getMailMessage() {
		return mailMessage;
	}

	public void setMailMessage(String mailMessage) {
		this.mailMessage = mailMessage;
	}

}
