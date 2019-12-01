package com.wy313.service;

import com.wy313.entity.Barrage;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface BarrageService {
    //查询所有弹幕
    public List<Barrage> findAll(String cid);
    //添加
    public void Add(String cid,String content,String create_time);
    //查询所有弹幕【小说名、章节名】
    public List<Barrage> findAlls(Integer start);
    //删除弹幕
    public void del(Integer id);
    //查询弹幕数量
    public Integer Count();

}
