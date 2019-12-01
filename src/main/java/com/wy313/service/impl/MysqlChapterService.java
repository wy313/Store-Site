package com.wy313.service.impl;

import com.wy313.entity.Chapter;
import com.wy313.mapping.ChapterMapping;
import com.wy313.service.ChapterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 章节接口实现类
 */
@Service
public class MysqlChapterService implements ChapterService {
    @Autowired
    private ChapterMapping chapterMapping;
    @Override
    public List<Chapter> findNew(int id) {
        return chapterMapping.findNewChap(id);
    }

    @Override
    public List<Chapter> findAll(int id) {
        return chapterMapping.findAll(id);
    }

    @Override
    public Chapter findId(int id, int cid) {
        return chapterMapping.findChapt(id,cid);
    }

    @Override
    public Chapter findLast(int id) {
        return chapterMapping.findLastChat(id);
    }

    @Override
    public Integer findOrder(String id) {
        return chapterMapping.findOrder(id);
    }

    @Override
    public List<Chapter> findNear(String id, Integer start, Integer end) {
        return chapterMapping.findNear(id,start,end);
    }


}
