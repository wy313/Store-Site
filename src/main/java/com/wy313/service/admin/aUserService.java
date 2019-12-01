package com.wy313.service.admin;

import com.wy313.entity.admin.aUser;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface aUserService {
    //验证登录
    public aUser find(String username, String password);
    //添加管理员
    public void addUser(String username,String password,String create_time);
    //删除管理员
    public void delUser(Integer id);
    //查询所有管理员
    public List<aUser> findAll();
    //查询name管理员
    public aUser findName(String name);
}
