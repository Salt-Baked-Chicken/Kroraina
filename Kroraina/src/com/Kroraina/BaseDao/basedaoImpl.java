package com.Kroraina.BaseDao;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

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

    public int executeUpdate(String sql,Object[] params){
        Connection con = getCon();
        PreparedStatement pstmt=null;
        int y=0;
        try {
            pstmt = con.prepareStatement(sql);
            if(params!=null){
                for(int i=0;i<params.length;i++){
                    pstmt.setObject(i+1,params[i]);
                }
            }
            y = pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            closeAll(pstmt,con);
        }
        return y;
    }

    public void closeAll(PreparedStatement pstmt,Connection conn){
        try {
            if(pstmt!=null){
                pstmt.close();
            }
            if(conn!=null){
                conn.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
