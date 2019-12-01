package com.wy313.service.impl;

import com.wy313.entity.Barrage;
import com.wy313.mapping.BarrageMapping;
import com.wy313.service.BarrageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class MysqlBarrageService implements BarrageService {
    @Autowired
    private BarrageMapping barrageMapping;
    @Override
    public List<Barrage> findAll(String cid) {
        return barrageMapping.findAll(cid);
    }

    @Override
    public void Add(String cid, String content, String create_time) {
        barrageMapping.Add(cid,content,create_time);
    }

    @Override
    public List<Barrage> findAlls(Integer start) {
        return barrageMapping.findAlls(start);
    }

    @Override
    public void del(Integer id) {
    barrageMapping.del(id);
    }

    @Override
    public Integer Count() {
        return barrageMapping.Count();
    }
}
