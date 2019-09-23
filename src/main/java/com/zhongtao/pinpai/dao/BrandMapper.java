package com.zhongtao.pinpai.dao;

import java.io.Serializable;
import java.util.List;

import com.zhongtao.pinpai.bean.Brand;

public interface BrandMapper extends BaseDao<Brand> {
	public List<Brand> findlist(Serializable number);
	public List<Brand> pinpailist(Serializable number);
	public List<Brand> listp();
	public List<Brand> findplist(Serializable number);
}
