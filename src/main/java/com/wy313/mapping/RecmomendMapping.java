package com.wy313.mapping;

import com.wy313.entity.Recmomend;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RecmomendMapping {
    //查询推荐
    @Select("select recmomend.id as id,title,img,store_id,create_time,score from recmomend LEFT JOIN store ON recmomend.id=store.id where recmomend.id=store.id")
    public List<Recmomend> findAllRecmomend();
    //删除推荐
    @Delete("delete from recmomend where id=#{id}")
    public void del(@Param("id") Integer id);
    //添加推荐
    @Insert("insert into recmomend(store_id,create_time)values(#{store_id},#{create_time})")
    public void add(@Param("store_id")Integer store_id,@Param("create_time")String create_time);
    //查找推荐小说
    @Select("select * from recmomend where store_id=#{store_id}")
    public Recmomend findId(@Param("store_id")Integer store_id);
}
