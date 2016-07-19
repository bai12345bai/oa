package com.oa.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity @Table(name="easybuy_order_detail")
public class Easybuy_Order_detail {

	private int eod_id;
	private int eo_id;
	private int ep_id;
	private int eod_quantity;
	private Float eod_cosFloat;
	@Id @GeneratedValue
	public int getEod_id() {
		return eod_id;
	}
	public void setEod_id(int eod_id) {
		this.eod_id = eod_id;
	}
	public int getEo_id() {
		return eo_id;
	}
	public void setEo_id(int eo_id) {
		this.eo_id = eo_id;
	}
	public int getEp_id() {
		return ep_id;
	}
	public void setEp_id(int ep_id) {
		this.ep_id = ep_id;
	}
	public int getEod_quantity() {
		return eod_quantity;
	}
	public void setEod_quantity(int eod_quantity) {
		this.eod_quantity = eod_quantity;
	}
	public Float getEod_cosFloat() {
		return eod_cosFloat;
	}
	public void setEod_cosFloat(Float eod_cosFloat) {
		this.eod_cosFloat = eod_cosFloat;
	}
	
	
	
}
