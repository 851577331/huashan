package com.zhongtao.pinpai.dao;

import java.io.Serializable;
import java.util.List;

public interface BaseDao<T>{
	public int add(T t);
	public int delete(Serializable number);
	public int update(T t);
	public T findById(Serializable number);
	public List<T> list();
	
}
