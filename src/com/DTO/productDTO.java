package com.DTO;

public class productDTO {
	private String inter_date;
	private String pro_name;
	private String pro_url;
	private String mem_id;
	
	public productDTO() {
		
	}
	
	public productDTO(String inter_date, String pro_name, String pro_url) {
		super();
		this.inter_date = inter_date;
		this.pro_name = pro_name;
		this.pro_url = pro_url;
	}
	
	
	public String getInter_date() {
		return inter_date;
	}
	public void setInter_date(String inter_date) {
		this.inter_date = inter_date;
	}
	public String getPro_name() {
		return pro_name;
	}
	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}
	public String getPro_url() {
		return pro_url;
	}
	public void setPro_url(String pro_url) {
		this.pro_url = pro_url;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	
	
		
	
}
