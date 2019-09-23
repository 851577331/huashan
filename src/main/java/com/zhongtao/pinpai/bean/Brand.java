package com.zhongtao.pinpai.bean;

public class Brand {
	private int pid;
	private String title;
	private String title1;
	private String description;
	private String keywords;
	private String img;
	private String alt;
	private String href;
	private String miaoshu;
	private String weit;
	private int hid;
	private int yid;
	private Billboard billboard;
	
	public Brand() {
		super();
	}
	public Brand(int pid, String title, String title1, String description, String keywords, String img, String alt,
			String href, String miaoshu, String weit, int hid, int yid, Billboard billboard) {
		super();
		this.pid = pid;
		this.title = title;
		this.title1 = title1;
		this.description = description;
		this.keywords = keywords;
		this.img = img;
		this.alt = alt;
		this.href = href;
		this.miaoshu = miaoshu;
		this.weit = weit;
		this.hid = hid;
		this.yid = yid;
		this.billboard = billboard;
	}
	@Override
	public String toString() {
		return "Brand [pid=" + pid + ", title=" + title + ", title1=" + title1 + ", description=" + description
				+ ", keywords=" + keywords + ", img=" + img + ", alt=" + alt + ", href=" + href + ", miaoshu=" + miaoshu
				+ ", weit=" + weit + ", hid=" + hid + ", yid=" + yid + ", billboard=" + billboard + "]";
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getTitle1() {
		return title1;
	}
	public void setTitle1(String title1) {
		this.title1 = title1;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getKeywords() {
		return keywords;
	}
	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getAlt() {
		return alt;
	}
	public void setAlt(String alt) {
		this.alt = alt;
	}
	public String getHref() {
		return href;
	}
	public void setHref(String href) {
		this.href = href;
	}
	public String getMiaoshu() {
		return miaoshu;
	}
	public void setMiaoshu(String miaoshu) {
		this.miaoshu = miaoshu;
	}
	public String getWeit() {
		return weit;
	}
	public void setWeit(String weit) {
		this.weit = weit;
	}
	public int getHid() {
		return hid;
	}
	public void setHid(int hid) {
		this.hid = hid;
	}
	public int getYid() {
		return yid;
	}
	public void setYid(int yid) {
		this.yid = yid;
	}
	public Billboard getBillboard() {
		return billboard;
	}
	public void setBillboard(Billboard billboard) {
		this.billboard = billboard;
	}
	
	
	
	
	
	
}
