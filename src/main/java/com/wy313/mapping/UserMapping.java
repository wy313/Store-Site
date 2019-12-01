package com.wy313.mapping;

import com.wy313.entity.User;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapping {
    //用户名查找对象
    @Select("select * from `user` where username=#{name}")
    public User findName(@Param("name") String name);
    //核对密码
    @Select("select count(*) from `user` where username=#{name} and password=md5(#{password})")
    public Integer SurePassword(@Param("name") String name,@Param("password") String password);
    //添加用户
    @Insert("insert into `user`(`username`,`password`,create_time)VALUES(#{name},md5(#{password}),#{create_time})")
    public void addUser(@Param("name") String name,@Param("password") String password,@Param("create_time") String create_time);
    //查询所有用户
    @Select("select * from `user`")
    public List<User> findAll();
    //删除用户
    @Delete("delete from `user` where id=#{id}")
    public void delUser(Integer id);
}
