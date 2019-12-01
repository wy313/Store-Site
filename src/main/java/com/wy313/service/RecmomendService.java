package com.wy313.service;

import com.wy313.entity.Recmomend;

import java.util.List;

public interface RecmomendService {
    public List<Recmomend> findALlRecmomend();
    //删除推荐
    public void del(Integer id);
    //添加推荐
    public void add(Integer id,String create_time);
    //查找推荐小说
    public Recmomend findId(Integer id);
}
