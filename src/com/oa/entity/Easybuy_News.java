package com.oa.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="easybuy_news")
public class Easybuy_News {
	
	private int en_id ;
	private String en_title;
	private String en_content;
	@Id @GeneratedValue
	public int getEn_id() {
		return en_id;
	}
	public void setEn_id(int en_id) {
		this.en_id = en_id;
	}
	public String getEn_title() {
		return en_title;
	}
	public void setEn_title(String en_title) {
		this.en_title = en_title;
	}
	public String getEn_content() {
		return en_content;
	}
	public void setEn_content(String en_content) {
		this.en_content = en_content;
	}
	

}
