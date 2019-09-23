package com.zhongtao.pinpai.service;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhongtao.pinpai.bean.New;
import com.zhongtao.pinpai.dao.NewMapper;

@Service("newService")
public class NewServiceImpl implements NewService{
	@Autowired
	NewMapper newMapper;
	
	@Override
	public int add(New n) {
		
		return newMapper.add(n);
	}

	@Override
	public int delete(Serializable number) {
		
		return newMapper.delete(number);
	}

	@Override
	public int update(New n) {
		
		return newMapper.update(n);
	}

	@Override
	public New findById(Serializable number) {
		
		return newMapper.findById(number);
	}

	@Override
	public List<New> list() {
		
		return newMapper.list();
	}

	@Override
	public List<New> listn() {
		
		return newMapper.listn();
	}

	@Override
	public New newsdetail(Serializable number) {
		
		return newMapper.newsdetail(number);
	}

}
