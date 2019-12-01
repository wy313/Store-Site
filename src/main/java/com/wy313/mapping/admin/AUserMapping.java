package com.wy313.mapping.admin;

import com.wy313.entity.admin.aUser;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AUserMapping {
    //验证登录
    @Select("SELECT * from admin where username=#{username} and password=md5(#{password})")
    public aUser find(@Param("username")String username, @Param("password")String password);
    //添加管理员
    @Insert("insert into  admin(username,password,create_time) values (#{username},md5(#{password}),${create_time})")
    public void addUser(@Param("username") String username,@Param("password") String password,@Param("create_time") String create_time);
    //删除管理员
    @Delete("delete from admin where id=${id}")
    public void delUser(@Param("id") Integer id);
    //查询所有管理员
    @Select("select * from admin ")
    public List<aUser> findAll();
    //查询name管理员
    @Select("select * from admin where username=#{name}")
    public aUser findName(@Param("name")String name);
}
