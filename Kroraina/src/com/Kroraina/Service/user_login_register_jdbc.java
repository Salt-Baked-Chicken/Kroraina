package com.Kroraina.Service;

import com.Kroraina.BaseDao.basedaoImpl;
import com.Kroraina.JavaBean.user_bean;
import java.util.List;

public class user_login_register_jdbc extends basedaoImpl {
    // 登陆查询账号密码
    public int account_contrast(String id,String psw){
        int y = 0;
        String sql = "select * from user where user_name = ? and user_password = ?";
        Object[] params = {id,psw};
        List<user_bean> list = select_user(sql,params);
        for (int i = 0; i < list.size(); i++){
            user_bean user = list.get(i);
            if (user.getAccount().equals(id) && user.getPassworld().equals(psw)){
                y = 1;
                return y;
            }else{
                return y;
            }
        }
        return y;
    }

    // 仅查询账号，注册时是否有相同
    public int account_contrast(String id){
        int y = 0;
        String sql = "select * from user where user_name = ?";
        Object[] params = {id};
        List<user_bean> list = select_user(sql,params);
        for (int i = 0; i < list.size(); i++){
            user_bean user = list.get(i);
            if (user.getAccount().equals(id)){
                y = 1;
                return y;
            }
        }
        return y;
    }

    // 注册应该用SQL事务来写，目前没用
    public int account_register(String id,String psw){
        int count = 0;
        String sql = "insert into user(User_name,user_password) values(?,?)";
        Object[] params = {id,psw};
        count = executeUpdate(sql,params);
        return count;
    }
}
