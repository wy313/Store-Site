package com.wy313.service.impl;

import com.wy313.entity.Recmomend;
import com.wy313.mapping.RecmomendMapping;
import com.wy313.service.RecmomendService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MysqlRecmomendService implements RecmomendService {
    @Autowired
    private RecmomendMapping recmomendMapping;
    @Override
    public List<Recmomend> findALlRecmomend() {
        return recmomendMapping.findAllRecmomend();
    }

    @Override
    public void del(Integer id) {
        recmomendMapping.del(id);
    }

    @Override
    public void add(Integer id, String create_time) {
            recmomendMapping.add(id,create_time);
    }

    @Override
    public Recmomend findId(Integer id) {
        return recmomendMapping.findId(id);
    }
}
