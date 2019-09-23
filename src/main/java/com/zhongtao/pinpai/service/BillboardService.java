package com.zhongtao.pinpai.service;


import java.io.Serializable;
import java.util.List;

import com.zhongtao.pinpai.bean.Billboard;

public interface BillboardService {
	public int add(Billboard b);
	public int delete(Integer number);
	public List<Billboard> list();
	public List<Billboard> selectById(Serializable number);
	public Billboard findById(Serializable number);
	public int update(Billboard b);
	public Billboard selectBill();
}
