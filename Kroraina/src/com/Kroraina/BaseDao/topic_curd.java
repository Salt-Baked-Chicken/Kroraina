package com.Kroraina.BaseDao;

import java.text.SimpleDateFormat;
import java.util.Date;

public class topic_curd extends basedaoImpl{
    public int newtopic_insert(String id,String topic_title,String content){
        int count = 0;
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");

        // 测试输出当前系统时间 dateFormat.format(new Date())
        // System.out.println(dateFormat.format(new Date()));

        String sql = "insert into topic(fk_user_name,title,content,content_time) values(?,?,?,?)";
        Object[] params = {id,topic_title,content,dateFormat.format(new Date())};
        count = executeUpdate(sql,params);
        return count;
    }
}