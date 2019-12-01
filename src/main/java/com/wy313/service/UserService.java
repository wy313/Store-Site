package com.wy313.service;

import com.wy313.entity.User;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface UserService {
    //用户名查找对象
    public User findName(String name);
    //核对密码
    public Integer SurePassword(String name,String password);
    //添加用户
    public void addUser(String name,String password,String create_time);
   //查询所有用户
    public List<User> findAll();
    //删除用户
    public void delUser(Integer id);

}
