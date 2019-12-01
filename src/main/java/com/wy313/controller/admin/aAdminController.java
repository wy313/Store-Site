package com.wy313.controller.admin;

import com.wy313.entity.admin.aUser;
import com.wy313.service.admin.aUserService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class aAdminController {
    @Autowired
    private aUserService aUserService;

    /**
     * 登录页面
     * @return
     */
    @RequestMapping(value = "/admin/login",method = RequestMethod.GET)
    public String login(){

        return "admin/login";
    }

    /**
     * 登录
     * @param username
     * @param password
     * @param session
     * @return
     */
    @PostMapping(value = "/admin/login")
    @ResponseBody
    public String plogin(@RequestParam("username")String username, @RequestParam("password")String password, HttpSession session, Model model){
        aUser aUser = aUserService.find(username, password);
        if(aUser !=null){

            session.setAttribute("user_id", aUser.getId());
            session.setAttribute("username",username);

            model.addAttribute("username",username);
            return "{\"code\":200}";
        }
        return "{\"code\":401}";

    }
    /**
     * 退出登录
     */
    @RequestMapping("admin/signout")
    public String signOur(HttpSession session){
        session.setAttribute("username","");
        return "admin/login";
    }
    /**
     * 管理员页面
     */
    @GetMapping("admin/admin")
    public String index(Model model, @RequestParam(value = "username",defaultValue = "-1")String username){
        if("-1".equals(username)){
            List<aUser> all = aUserService.findAll();
            for(int i=0;i<all.size();i++){
                all.get(i).setCreate_time(new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date(Long.parseLong(all.get(i).getCreate_time()))));
            }
            model.addAttribute("userlist",all);
            model.addAttribute("status",true);
        }

        return "admin/admin";
    }
    /**
     * 删除管理员
     */
    @PostMapping("admin/admindel")
    @ResponseBody
    public String del(@Param("id")String id){
        aUserService.delUser(Integer.parseInt(id));
        return "{\"code\":200}";
    }
    /**
     * 添加管理员页面
     */
    @GetMapping("admin/adminadd")
    public String addPage(){
        return "admin/admin-add";
    }
    /**
     * 添加管理员
     */
    @PostMapping("admin/adminadd")
    @ResponseBody
    public String add(@Param("username")String username,@Param("password")String password){
        aUser name = aUserService.findName(username);
        if(name==null){
            aUserService.addUser(username,password,Long.toString(new Date().getTime()));
            return "{\"code\":200}";
        }else{
            return "{\"code\":401}";
        }

    }
}
