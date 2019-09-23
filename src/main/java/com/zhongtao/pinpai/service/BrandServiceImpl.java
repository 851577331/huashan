package com.zhongtao.pinpai.service;
import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.zhongtao.pinpai.bean.Brand;
import com.zhongtao.pinpai.dao.BrandMapper;


@Service("brandService")
public class BrandServiceImpl implements BrandService{

	@Autowired
	BrandMapper brandMapper;
	
	@Override
	public int add(Brand p) {
		
		return brandMapper.add(p);
	}

	@Override
	public int delete(Integer number) {
		
		return brandMapper.delete(number);
	}

	@Override
	public int update(Brand p) {
		
		return brandMapper.update(p);
	}

	@Override
	public Brand findById(Integer number) {
		
		return brandMapper.findById(number);
	}

	@Override
	public List<Brand> list() {
		
		return brandMapper.list();
	}

	@Override
	public List<Brand> findlist(Integer number) {
		
		return brandMapper.findlist(number);
	}

	@Override
	public List<Brand> pinpailist(Integer number) {
		
		return brandMapper.pinpailist(number);
	}

	@Override
	public List<Brand> listp() {
		// TODO Auto-generated method stub
		return brandMapper.listp();
	}

	@Override
	public List<Brand> findplist(Serializable number) {
		// TODO Auto-generated method stub
		return brandMapper.findplist(number);
	}

}
