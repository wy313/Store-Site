package com.wy313.service.impl;

import com.wy313.entity.Store;
import com.wy313.mapping.BookshelfMapping;
import com.wy313.service.BookshelfService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MysqlBookshelfService implements BookshelfService {
    @Autowired
    private BookshelfMapping bookshelfMapping;
    @Override
    public List<Store> findALl(Integer uid) {
        return bookshelfMapping.findALl(uid);
    }

    @Override
    public void addBook(Integer uid, Integer sid,String newtime) {
        bookshelfMapping.addBook(uid,sid,newtime);
    }

    @Override
    public Integer findN(Integer uid, Integer sid) {
        return bookshelfMapping.findN(uid,sid);
    }
}
