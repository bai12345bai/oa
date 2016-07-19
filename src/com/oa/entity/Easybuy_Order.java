package com.oa.entity;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity @Table(name="easybuy_order")
public class Easybuy_Order {

	private int id ;
	private String user_id;
	private String user_name;
	private String user_adredss;
	private Date creat_time;
	private Float cost;
	private int status;
	@Id @GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_adredss() {
		return user_adredss;
	}
	public void setUser_adredss(String user_adredss) {
		this.user_adredss = user_adredss;
	}
	public Date getCreat_time() {
		return creat_time;
	}
	public void setCreat_time(Date creat_time) {
		this.creat_time = creat_time;
	}
	public Float getCost() {
		return cost;
	}
	public void setCost(Float cost) {
		this.cost = cost;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Easybuy_Order [id=" + id + ", user_id=" + user_id
				+ ", user_name=" + user_name + ", user_adredss=" + user_adredss
				+ ", creat_time=" + creat_time + ", cost=" + cost + ", status="
				+ status + "]";
	}
	
	
	
}
