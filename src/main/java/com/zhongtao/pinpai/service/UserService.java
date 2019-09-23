package com.zhongtao.pinpai.service;
import java.util.List;



import com.zhongtao.pinpai.bean.User;


public interface UserService {
	public int add(User t);
	public int delete(Integer number);
	public int update(User t);
	public User findById(Integer number);
	public User selectByNamePwd(String uname);
	public List<User> list();

}
