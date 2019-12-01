package com.wy313.service;

import com.wy313.entity.Chapter;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ChapterService {
    //查找最新章节
    public List<Chapter> findNew(int id);
    //查询所有章节
    public List<Chapter> findAll(int id);
    //查询指定章节
    public Chapter findId(int id,int cid);
    //查找最早发布
    public  Chapter findLast(int id);
    //查找order
    public Integer findOrder(String id);
    //查找相邻记录
    public List<Chapter> findNear(String id,Integer start,Integer end);
}
