package com.wy313.mapping;

import com.wy313.entity.Barrage;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@Repository
public interface BarrageMapping {
    //查询所有弹幕
    @Select("SELECT* from barrage where chapter_id=#{cid}")
    public List<Barrage> findAll(@PathVariable("cid")String cid);
    //添加
    @Insert("insert into barrage (chapter_id,content,create_time) values(#{cid},#{content},#{create_time})")
    public void Add(@PathVariable("cid")String cid,@PathVariable("content")String content,@PathVariable("create_time")String create_time);
    //查询所有弹幕【小说名、章节名】
    @Select("select a.id,a.content,b.chap as cName,c.title as sName,a.create_time  from (barrage as a JOIN chapter as b ON a.chapter_id=b.id) join store as c on c.id=b.store_id order by a.id limit #{start},20")
    public List<Barrage> findAlls(@PathVariable("start")Integer start);
    //删除弹幕
    @Delete("delete from barrage where id=#{id}")
    public void del(@PathVariable("id") Integer id);
    //查询弹幕数量
    @Select("select count(*) from barrage")
    public Integer Count();
}
