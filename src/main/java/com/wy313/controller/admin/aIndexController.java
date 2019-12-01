package com.wy313.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Date;

@Controller
public class aIndexController {
    /**
     * 后台首页
     * @return
     */
    @RequestMapping("/admin/index")
    public String index(){
        return "admin/index";
    }
    /**
     * 后台欢迎页
     */
    @GetMapping("admin/welcom")
    public String welcom(Model model, HttpSession session){
        try {
            String s = InetAddress.getLocalHost().toString();
            Object hostName = InetAddress.getLocalHost().getHostName();
            String date = new Date().toString();

            model.addAttribute("serverIP",s);
            model.addAttribute("hostName",hostName);
            model.addAttribute("date",date);
        } catch (UnknownHostException e) {
            e.printStackTrace();
        }
        return "admin/welcom";
    }
}
