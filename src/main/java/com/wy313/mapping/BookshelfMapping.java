package com.wy313.mapping;

import com.wy313.entity.Store;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BookshelfMapping {
    //查询用户书架所有内容
    @Select("select b.id,typename,img,author,intro,score,b.newtime,b.url from bookshelf as a join store as b on a.store_id=b.id where a.user_id=#{uid} order by b.score desc")
    public List<Store> findALl(@Param("uid") Integer uid);
    //添加到书架
    @Insert("insert into bookshelf(user_id,store_id,create_time) values(#{uid},#{sid},${newtime})")
    public void addBook(@Param("uid")Integer uid,@Param("sid")Integer sid,@Param("newtime")String newtime);
    //查询关系是否存在
    @Select("select count(*) from bookshelf where user_id=#{uid} and store_id=#{sid}")
    public Integer findN(@Param("uid")Integer uid,@Param("sid")Integer sid);
}
