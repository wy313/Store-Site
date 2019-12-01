package com.wy313.controller.admin;

import com.wy313.entity.Store;
import com.wy313.service.StoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class aStoreController {

    @Autowired
    private StoreService storeService;

    /**
     * 小说管理页面
     * @param model
     * @return
     */
    @GetMapping("admin/store")
    public String index(Model model, @RequestParam(value = "start",defaultValue = "0")Integer start){
        int len=start*4;
        List<Store> allStore = storeService.findnumberStore(len);
        int count=storeService.findNums();
        for(int i=0;i<allStore.size();i++){
            allStore.get(i).setNewtime(new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date(Long.parseLong(allStore.get(i).getNewtime()))));
        }
        model.addAttribute("siteurl","https://www.biqudao.com");
        model.addAttribute("storelist",allStore);
        model.addAttribute("last",start-1);
        if(count<4*(start+1)){
            model.addAttribute("next",-1);
        }else{
            model.addAttribute("next",start+1);
        }
        return "admin/store";
    }


}
