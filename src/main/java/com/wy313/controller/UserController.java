package com.wy313.controller;

import com.wy313.entity.User;
import com.wy313.service.BookshelfService;
import com.wy313.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;

@Controller
public class UserController {

    @Autowired
    private UserService userService;
    @Autowired
    private BookshelfService bookshelfService;
    //登录或注册页面
    @RequestMapping(value = "/user/login",method = RequestMethod.GET)
    public String index(@RequestParam(value = "bookId",defaultValue = "")String bookId,@RequestParam(value = "books",defaultValue = "-1")String books, Model model){
        model.addAttribute("bookId",bookId);
        return "login";
    }
    //登录或者注册请求
    @RequestMapping(value = "/user/login",method = RequestMethod.POST)
    @ResponseBody
    public String login(@RequestParam(value = "bookId",defaultValue = "-1")String bookId,@RequestParam("loginName")String loginName,@RequestParam("password")String password){
        User name = userService.findName(loginName);
        if(name!=null){
            Integer integer = userService.SurePassword(loginName, password);
            if(integer>0){
                return "{\"code\":200,\"uid\":"+name.getId()+"}";
            }else{
                return "{\"code\":401}";
            }
        }else{

            userService.addUser(loginName,password,Long.toString(new Date().getTime()));
        }
        if(!"-1".equals(bookId)){
            User name1 = userService.findName(loginName);
            bookshelfService.addBook(name1.getId(),Integer.parseInt(bookId),Long.toString(new Date().getTime()));
            return "{\"code\":200,\"uid\":"+name1.getId()+"}";
        }else{
            return "{\"code\":200}";
        }

    }
}
