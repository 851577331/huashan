package com.zhongtao.pinpai.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhongtao.pinpai.bean.User;
import com.zhongtao.pinpai.dao.UserMapper;

@Service("userService")
public class UserServiceImpl implements UserService{
	@Autowired
	UserMapper userMapper;
	
	public int add(User t) {
		
		return userMapper.add(t);
	}

	public int delete(Integer number) {
		
		return userMapper.delete(number);
	}

	public int update(User t) {
		
		return userMapper.update(t);
	}

	public User findById(Integer number) {
		
		return userMapper.findById(number);
	}

	public List<User> list() {
		
		return userMapper.list();
	}

	public User selectByNamePwd(String uname) {
		// TODO Auto-generated method stub
		return userMapper.selectByNamePwd(uname);
	}

	}
