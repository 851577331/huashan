package com.zhongtao.pinpai.dao;
import java.io.Serializable;
import java.util.List;

import com.zhongtao.pinpai.bean.Billboard;


public interface BillboardMapper extends BaseDao<Billboard>{
	public List<Billboard> selectById(Serializable number);
	public Billboard selectBill();
}
