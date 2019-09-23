package com.zhongtao.pinpai.bean;

public class New {
	private int nid;
	private String title;
	private String weit;
	private String editor;
	private String author;
	private String source;
	private String nkeyword;
	private String ndescribe;
	private String time;
	private String myEditor;
	@Override
	public String toString() {
		return "New [nid=" + nid + ", title=" + title + ", weit=" + weit + ", editor=" + editor + ", author=" + author
				+ ", source=" + source + ", nkeyword=" + nkeyword + ", ndescribe=" + ndescribe + ", time=" + time
				+ ", myEditor=" + myEditor + "]";
	}
	public int getNid() {
		return nid;
	}
	public void setNid(int nid) {
		this.nid = nid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWeit() {
		return weit;
	}
	public void setWeit(String weit) {
		this.weit = weit;
	}
	public String getEditor() {
		return editor;
	}
	public void setEditor(String editor) {
		this.editor = editor;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getNkeyword() {
		return nkeyword;
	}
	public void setNkeyword(String nkeyword) {
		this.nkeyword = nkeyword;
	}
	public String getNdescribe() {
		return ndescribe;
	}
	public void setNdescribe(String ndescribe) {
		this.ndescribe = ndescribe;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getMyEditor() {
		return myEditor;
	}
	public void setMyEditor(String myEditor) {
		this.myEditor = myEditor;
	}
	public New(int nid, String title, String weit, String editor, String author, String source, String nkeyword,
			String ndescribe, String time, String myEditor) {
		super();
		this.nid = nid;
		this.title = title;
		this.weit = weit;
		this.editor = editor;
		this.author = author;
		this.source = source;
		this.nkeyword = nkeyword;
		this.ndescribe = ndescribe;
		this.time = time;
		this.myEditor = myEditor;
	}
	public New() {
		super();
	}
	
	
	
	
}
