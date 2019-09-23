package com.zhongtao.pinpai.dao;

import java.io.Serializable;
import java.util.List;
import com.zhongtao.pinpai.bean.New;

public interface NewMapper extends BaseDao<New>{
	public List<New> listn();
	public New newsdetail(Serializable number);
}
