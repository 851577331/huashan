package com.zhongtao.pinpai.service;

import java.io.Serializable;
import java.util.List;

import com.zhongtao.pinpai.bean.New;

public interface NewService {
	public int add(New n);
	public int delete(Serializable number);
	public int update(New n);
	public New findById(Serializable number);
	public List<New> list();
	public List<New> listn();
	public New newsdetail(Serializable number);
}
