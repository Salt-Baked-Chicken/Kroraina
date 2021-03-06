package com.Kroraina.BaseDao;

import com.Kroraina.JavaBean.topic_bean;
import com.Kroraina.JavaBean.user_bean;

import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.*;

public class basedaoImpl implements basedao {
    static String driver=null;
    static String url=null;
    static String username=null;
    static String password=null;
    static{
        init();
    }
    public static void init(){
        Properties ps = new Properties();
        String configFile="database.properties";
        InputStream is =
                basedaoImpl.class.getClassLoader().getResourceAsStream(configFile);
        try {
            ps.load(is);
        } catch (IOException e) {
            e.printStackTrace();
        }
        driver = ps.getProperty("driver");
        url = ps.getProperty("url");
        username = ps.getProperty("username");
        password = ps.getProperty("password");
    }

    public Connection getCon(){
        Connection connection=null;
        try {
            //
            Class.forName(driver);
            try {
                //
                connection = DriverManager.getConnection(url,username,password);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

    //查询topic
    public List<topic_bean> select_topic(String sql, Object[] params){
        List<topic_bean> list = new ArrayList<topic_bean>();
        Connection conn = getCon();
        PreparedStatement psmt = null;
        ResultSet rs = null;
        try {
            psmt = conn.prepareStatement(sql);
            if(params!=null){
                for(int i=0;i<params.length;i++){
                    psmt.setObject(i+1,params[i]);
                }
            }
            rs = psmt.executeQuery();
            while (rs.next()){
                topic_bean mr_topic = new topic_bean();
                mr_topic.setTitle(rs.getString("title"));
                mr_topic.setContent(rs.getString("content"));
                mr_topic.setId(rs.getString("fk_user_name"));
                //数据库里这里还有一个content_time的列没有提取
                list.add(mr_topic);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return list;
    }

    public List<user_bean> select_user(String sql,Object[] params){
        Connection conn = getCon();
        PreparedStatement psmt = null;
        ResultSet rs = null;
        List<user_bean> list = new ArrayList<user_bean>();
        user_bean user;
        try {
            psmt = conn.prepareStatement(sql);
            if(params!=null){
                for(int i=0;i<params.length;i++){
                    psmt.setObject(i+1,params[i]);
                }
            }
            rs = psmt.executeQuery();
            while (rs.next()){
                if (rs.getString("user_name") == null){
                    return list;
                }else {
                    user = new user_bean();
                    user.setAccount(rs.getString("user_name"));
                    user.setPassworld(rs.getString("user_password"));
                }
                list.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            closeAll(conn,psmt,rs);
        }
        return list;
    }

    public int executeUpdate(String sql,Object[] params){
        Connection conn = getCon();
        PreparedStatement psmt=null;
        ResultSet rs = null;
        int y = 0;
        try {
            psmt = conn.prepareStatement(sql);
            if(params!=null){
                for(int i=0;i<params.length;i++){
                    psmt.setObject(i+1,params[i]);
                }
            }
            y = psmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            closeAll(conn,psmt,rs);
        }
        return y;
    }

    public void closeAll(Connection conn, PreparedStatement psmt, ResultSet rs){
        try {
            if(psmt!=null){
                psmt.close();
            }
            if(conn!=null){
                conn.close();
            }
            if (rs!=null){
                rs.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
