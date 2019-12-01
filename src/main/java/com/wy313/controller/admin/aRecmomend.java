package com.wy313.controller.admin;

import com.wy313.entity.Recmomend;
import com.wy313.entity.Store;
import com.wy313.service.RecmomendService;
import com.wy313.service.StoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * 后台小说推荐控制器
 */
@Controller
public class aRecmomend {
    @Autowired
    private RecmomendService recmomendService;
    @Autowired
    private StoreService storeService;
    /**
     * 小说推荐页面
     */
    @GetMapping("admin/recmomend")
    public String remomon(Model model){
        List<Recmomend> aLlRecmomend = recmomendService.findALlRecmomend();
        for(int i=0;i<aLlRecmomend.size();i++){
            aLlRecmomend.get(i).setCreate_time(new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date(Long.parseLong(aLlRecmomend.get(i).getCreate_time()))));
        }
        model.addAttribute("recmolist",aLlRecmomend);
        return "admin/recmomend";
    }
    /**
     * 添加小说页面
     */
    @GetMapping("admin/recmomendadd")
    public String addPage(Model model){
        List<Store> allStore = storeService.findAllStore();
        model.addAttribute("storelist",allStore);
        return "admin/recmomendadd";
    }
    /**
     * 删除小说推荐
     */
    @PostMapping("admin/recmomend/del")
    @ResponseBody
    public String del(@RequestParam("id")Integer id){
        recmomendService.del(id);
        return "{\"code\":200}";
    }
    /**
     * 添加小说推荐
     */
    @PostMapping("admin/recmomend/add")
    @ResponseBody
    public String add(@RequestParam("id")Integer id){
        Recmomend id1 = recmomendService.findId(id);
        if(id1==null){
            recmomendService.add(id,Long.toString(new Date().getTime()));
            return "{\"code\":200}";
        }else{
            return "{\"code\":401}";
        }

    }
}
