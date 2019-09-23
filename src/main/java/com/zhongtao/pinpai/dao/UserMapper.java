package com.zhongtao.pinpai.dao;



import com.zhongtao.pinpai.bean.User;

public interface UserMapper extends BaseDao<User> {
	public User selectByNamePwd(String uname);
}
