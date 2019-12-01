package com.wy313.controller;

import com.wy313.entity.Chapter;
import com.wy313.entity.Store;
import com.wy313.service.ChapterService;
import com.wy313.service.StoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class pageController {

    @Autowired
    private StoreService storeService;

    @Autowired
    private ChapterService chapterService;
    @RequestMapping("/page/id={id}")
    public String index(@PathVariable String id, Model model){

        Store id1 = storeService.findId(id);
        id1.setNewtime(new SimpleDateFormat("YYYY-MM-dd").format(new Date(Long.parseLong(id1.getNewtime()))));
        List<Chapter> aNew = chapterService.findNew(id1.getId());
        Chapter last = chapterService.findLast(Integer.parseInt(id));
        if(last==null){
            last=new Chapter();
            last.setId(-1);
        }
        model.addAttribute("lastChap",last);
        model.addAttribute("chaplist",aNew);
        model.addAttribute("siteurl","https://www.biqudao.com");
        model.addAttribute("id",id);
        model.addAttribute("store",id1);
        return "page";
    }

}
