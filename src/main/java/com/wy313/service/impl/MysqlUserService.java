package com.wy313.service.impl;

import com.wy313.entity.User;
import com.wy313.mapping.UserMapping;
import com.wy313.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MysqlUserService  implements UserService {

    @Autowired
    private   UserMapping userMapping;
    @Override
    public User findName(String name) {
        return userMapping.findName(name);
    }

    @Override
    public Integer SurePassword(String name, String password) {
        return userMapping.SurePassword(name,password);
    }

    @Override
    public void addUser(String name, String password, String create_time) {
    userMapping.addUser(name,password,create_time);
    }

    @Override
    public List<User> findAll() {
        return userMapping.findAll();
    }

    @Override
    public void delUser(Integer id) {
            userMapping.delUser(id);
    }
}
