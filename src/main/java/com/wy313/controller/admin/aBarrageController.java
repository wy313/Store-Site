package com.wy313.controller.admin;

import com.wy313.entity.Barrage;
import com.wy313.service.BarrageService;
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

@Controller
public class aBarrageController {
    @Autowired
    private BarrageService barrageService;
    /**
     * 弹幕页面
     * @return
     */
    @GetMapping("admin/barrage")
    public String index(Model model,@RequestParam(value = "start",defaultValue = "0")Integer start){
        int i1 = start * 20;
        List<Barrage> alls = barrageService.findAlls(i1);
        Integer count = barrageService.Count();

        for(int i=0;i<alls.size();i++){
            alls.get(i).setCreate_time(new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date(Long.parseLong(alls.get(i).getCreate_time()))));
        }
        model.addAttribute("last",start-1);
        if(count<20*(start+1)){
            model.addAttribute("next",-1);
        }else{
            model.addAttribute("next",start+1);
        }
        model.addAttribute("barragelist",alls);
        return "admin/aBarrage";
    }
    /**
     * 删除弹幕
     */
    @PostMapping("admin/barrage/del")
    @ResponseBody
    public String del(@RequestParam("id")String id){
        barrageService.del(Integer.parseInt(id));
        return "{\"code\":200}";
    }
}
