package com.wy313.service;

import com.wy313.entity.Store;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface BookshelfService {
    //查询用户书架所有内容
    public List<Store> findALl(Integer uid);
    //添加到书架
    public void addBook(Integer uid,Integer sid,String newtime);
    //查询关系是否存在
    public Integer findN(Integer uid,Integer sid);
}
