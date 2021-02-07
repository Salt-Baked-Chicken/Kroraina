package com.Kroraina.BaseDao;

import com.Kroraina.JavaBean.user_bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class user_curd_Impl extends basedaoImpl{
    // 登陆功能,查询账号密码
    public int account_contrast(String id,String psw){
        int y = 0;
        String sql = "select * from user where user_name = ? and user_password = ?";
        Object[] params = {id,psw};
        List<user_bean> list = select(sql,params);
        user_bean user = list.get(0);
        if (user.getAccount().equals(id) && user.getPassworld().equals(psw)){
            y = 1;
            return y;
        }else{
            return y;
        }
    }

    public int account_contrast(String id){
        int y = 0;
        String sql = "select * from user where user_name = ?";
        Object[] params = {id};
        List<user_bean> list = select(sql,params);
        user_bean user = list.get(0);
        if (user.getAccount().equals(id)){
            y = 1;
            return y;
        }else{
            return y;
        }
    }

    // 注册功能理应用SQL事务模式来写，目前没有这样使用
    public int account_register(String id,String psw){
        int count = 0;
        String sql = "insert into user(User_name,user_password) values(?,?)";
        Object[] params = {id,psw};
        count = executeUpdate(sql,params);
        return count;
    }
}
