package com.zhongtao.pinpai.service;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhongtao.pinpai.bean.Billboard;
import com.zhongtao.pinpai.dao.BillboardMapper;

@Service("billboardService")
public class BillboardServiceImpl implements BillboardService {

	@Autowired
	BillboardMapper billboardMapper;
	
	@Override
	public int add(Billboard b) {
		
		return billboardMapper.add(b);
	}

	@Override
	public int delete(Integer number) {
		
		return billboardMapper.delete(number);
	}

	@Override
	public List<Billboard> list() {
		
		return billboardMapper.list();
	}

	@Override
	public List<Billboard> selectById(Serializable number) {
		
		return billboardMapper.selectById(number);
	}

	@Override
	public Billboard findById(Serializable number) {
		
		return billboardMapper.findById(number);
	}

	@Override
	public int update(Billboard b) {
		
		return billboardMapper.update(b);
	}

	@Override
	public Billboard selectBill() {
	
		return billboardMapper.selectBill();
	}

}
