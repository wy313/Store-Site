package com.wy313.controller.admin;

import com.wy313.entity.User;
import com.wy313.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class aUserController {

    @Autowired
    private UserService userService;


    /**
     * 查询所有用户
     */
    @GetMapping("admin/userlist")
    public String userlist(Model model){
        List<User> all = userService.findAll();

        for(int i=0;i<all.size();i++){
            all.get(i).setCreate_time(new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date(Long.parseLong(all.get(i).getCreate_time()))));
        }

        model.addAttribute("userlist",all);
        return "admin/user";
    }
    /**
     * 删除用户
     */
    @PostMapping("/admin/userdel")
    @ResponseBody
    public String userdel(@RequestParam("id")String id){
        userService.delUser(Integer.parseInt(id));
        return "{\"code\":200}";
    }

}
