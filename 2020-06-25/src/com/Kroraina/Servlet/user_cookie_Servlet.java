package com.Kroraina.Servlet;

import com.Kroraina.Service.user_login_register_jdbc;
import com.Kroraina.tools.Cookie_get_write;
import com.alibaba.fastjson.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

// 检测用户cookie中的账号密码，做自动登录检测
@WebServlet("/user_cookie_Servlet")
public class user_cookie_Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        JSONObject object = new JSONObject();
        user_login_register_jdbc user_on_sql = new user_login_register_jdbc();
        Cookie_get_write get_user = new Cookie_get_write();
        String id = get_user.getCookieByName(request,"name").getValue();
        String psw = get_user.getCookieByName(request,"psw").getValue();
        if (id == null){
            response.getWriter().print(object);
        }else{
            int y = user_on_sql.account_contrast(id,psw);
            if (y == 1){
                object.put("login_state","1");
                response.getWriter().print(object);
            }else{
                object.put("login_state","0");
                response.getWriter().print(object);
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
