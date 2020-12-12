package com.DTO;

public class resultDTO {
	String mem_id = "";
	String res = "";
	String res_date = "";
	
	public resultDTO() {
		
	}
	
	
	
	public resultDTO(String mem_id) {
		super();
		this.mem_id = mem_id;
	}



	public resultDTO(String res_date, String res) {
		super();
		this.res_date = res_date;
		this.res = res;
	}



	public resultDTO(String mem_id, String res, String res_date) {
		super();
		this.mem_id = mem_id;
		this.res = res;
		this.res_date = res_date;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getRes() {
		return res;
	}
	public void setRes(String res) {
		this.res = res;
	}
	public String getRes_date() {
		return res_date;
	}
	public void setRes_date(String res_date) {
		this.res_date = res_date;
	}
	
	
}
