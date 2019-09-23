package com.zhongtao.pinpai.service;

import java.io.Serializable;
import java.util.List;

import com.zhongtao.pinpai.bean.Brand;


public interface BrandService {
	public int add(Brand p);
	public int delete(Integer number);
	public int update(Brand p);
	public Brand findById(Integer number);
	public List<Brand> list();
	public List<Brand> findlist(Integer number);
	public List<Brand> pinpailist(Integer number);
	public List<Brand> listp();
	public List<Brand> findplist(Serializable number);
}
