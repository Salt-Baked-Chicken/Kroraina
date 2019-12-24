package com.Kroraina.Service;

import com.Kroraina.BaseDao.basedaoImpl;
import com.Kroraina.JavaBean.topic_bean;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

// 话题增删改查
public class topic_curd extends basedaoImpl{
    // 增加新话题到数据库
    public int new_topic_insert(String id,String topic_title,String content){
        int count = 0;
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        String sql = "insert into topic(fk_user_name,title,content,content_time) values(?,?,?,?)";
        Object[] params = {id,topic_title,content,dateFormat.format(new Date())};
        count = executeUpdate(sql,params);
        return count;
    }

    // 加载数据库已有的话题
    public List<topic_bean> topic_loading(int init_num,int take_num){
        // 跑通语句SELECT * FROM topic ORDER BY content_time DESC LIMIT 0,10;
        // 被代替语句String sql = "select * from topic limit ?,?";
        String sql = "select * from topic order by content_time desc limit ?,?";
        Object[] params = {init_num, take_num};
        List<topic_bean> mr_list = select_topic(sql,params);
        return  mr_list;
    }
}