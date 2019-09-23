package com.zhongtao.pinpai.bean;

public class Billboard {
	private int bid;
	private String pname;
	private int byid;
	private String btitle;
	private String bdescription;
	private String bkeywords;
	
	
	
	public Billboard() {
		super();
	}
	public Billboard(int bid, String pname, int byid, String btitle, String bdescription, String bkeywords) {
		super();
		this.bid = bid;
		this.pname = pname;
		this.byid = byid;
		this.btitle = btitle;
		this.bdescription = bdescription;
		this.bkeywords = bkeywords;
	}
	@Override
	public String toString() {
		return "Billboard [bid=" + bid + ", pname=" + pname + ", byid=" + byid + ", btitle=" + btitle
				+ ", bdescription=" + bdescription + ", bkeywords=" + bkeywords + "]";
	}
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getByid() {
		return byid;
	}
	public void setByid(int byid) {
		this.byid = byid;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public String getBdescription() {
		return bdescription;
	}
	public void setBdescription(String bdescription) {
		this.bdescription = bdescription;
	}
	public String getBkeywords() {
		return bkeywords;
	}
	public void setBkeywords(String bkeywords) {
		this.bkeywords = bkeywords;
	}
	
	
}
