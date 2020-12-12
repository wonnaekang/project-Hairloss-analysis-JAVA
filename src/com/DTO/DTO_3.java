package com.DTO;

public class DTO_3 {
	
	private String id;
	private String pw;
	private String email;
	private int sur_num;
	private String sur_id;
	private String sur_date;
	private String que1;
	private String que2;
	private String que3;
	private String que4;
	private String que5;
	private String que6;
	private String que7;
	private String que8;
	private String que9;
	private String que10;
	private String inter_date;
	private String pro_name;
	private String pro_url;
	private String mem_id;

	
	public DTO_3(String id, String pw, String email) {
		this.id = id;
		this.pw = pw;
		this.email = email;
	}
	
	public DTO_3(String id, String pw) {//<-- 이름을 똑같이 만들어도 될까?
		this.id = id;
		this.pw = pw;
	}
	
	public DTO_3(int sur_num, String sur_id, String que1,String que2,String que3,String que4,String que5,String que6,String que7,String que8,String que9,String que10) {//<-- 이름을 똑같이 만들어도 될까?
	
	}

	public DTO_3(int sur_num, String sur_id, String sur_date, String que1, String que2, String que3, String que4,
			String que5, String que6, String que7, String que8,String que9,String que10) {
		this.sur_num = sur_num;
		this.sur_id = sur_id;
		this.sur_date = sur_date;
		this.que1 = que1;
		this.que2 = que2;
		this.que3 = que3;
		this.que4 = que4;
		this.que5 = que5;
		this.que6 = que6;
		this.que7 = que7;
		this.que8 = que8;
		this.que9 = que9;
		this.que10 = que10;
	}
	

	public DTO_3(String inter_date, String pro_name, String pro_url, String mem_id) {
		this.inter_date = inter_date;
		this.pro_name = pro_name;
		this.pro_url = pro_url;
		this.mem_id = mem_id;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
		
	}

	public int getSur_num() {
		return sur_num;
	}

	public void setSur_num(int sur_num) {
		this.sur_num = sur_num;
	}

	public String getSur_id() {
		return sur_id;
	}

	public void setSur_id(String sur_id) {
		this.sur_id = sur_id;
	}

	public String getSur_date() {
		return sur_date;
	}

	public void setSur_date(String sur_date) {
		this.sur_date = sur_date;
	}

	public String getQue1() {
		return que1;
	}

	public void setQue1(String que1) {
		this.que1 = que1;
	}

	public String getQue2() {
		return que2;
	}

	public void setQue2(String que2) {
		this.que2 = que2;
	}

	public String getQue3() {
		return que3;
	}

	public void setQue3(String que3) {
		this.que3 = que3;
	}

	public String getQue4() {
		return que4;
	}

	public void setQue4(String que4) {
		this.que4 = que4;
	}

	public String getQue5() {
		return que5;
	}

	public void setQue5(String que5) {
		this.que5 = que5;
	}

	public String getQue6() {
		return que6;
	}

	public void setQue6(String que6) {
		this.que6 = que6;
	}

	public String getQue7() {
		return que7;
	}

	public void setQue7(String que7) {
		this.que7 = que7;
	}

	public String getQue8() {
		return que8;
	}

	public void setQue8(String que8) {
		this.que8 = que8;
	}

	public String getQue9() {
		return que9;
	}

	public void setQue9(String que9) {
		this.que8 = que9;
	}
	
	public String getQue10() {
		return que10;
	}

	public void setQue10(String que10) {
		this.que8 = que10;
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
