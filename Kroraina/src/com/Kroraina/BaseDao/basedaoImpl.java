package com.Kroraina.BaseDao;

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

    public List<user_bean> select(String sql,Object[] params){
        Connection conn=null;
        user_bean user = null;
        List<user_bean> list = new ArrayList<>();
        PreparedStatement pstmt=null;
        try {
            conn = getCon();
            pstmt = conn.prepareStatement(sql);
            if(params!=null){
                for(int i=0;i<params.length;i++){
                    pstmt.setObject(i+1,params[i]);
                }
            }
            ResultSet rs= pstmt.executeQuery();
            while(rs.next()){
                user = new user_bean();
                System.out.print(rs.getString("user_name"));
                System.out.println("密码是"+rs.getString("user_password"));
                user.setAccount(rs.getString("user_name"));
                user.setPassworld(rs.getString("user_password"));
                list.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public int executeUpdate(String sql,Object[] params){
        Connection conn = getCon();
        PreparedStatement psmt=null;
        ResultSet rs = null;
        int y=0;
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
