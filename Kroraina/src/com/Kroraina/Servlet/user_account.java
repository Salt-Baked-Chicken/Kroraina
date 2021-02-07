package com.Kroraina.Servlet;

import com.Kroraina.BaseDao.user_curd_Impl;
import com.Kroraina.JavaBean.user_bean;
import com.Kroraina.Service.user_account_contrast;
import com.alibaba.fastjson.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/user_account")
public class user_account extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        JSONObject object = new JSONObject();
        String type = request.getParameter("type");
        String id = request.getParameter("user_id");
        String psw = request.getParameter("password");
        user_account_contrast f = new user_account_contrast();
        int num = f.login_register(id,psw,type);
        switch (num){
            case 0:
                System.out.println("登陆失败");
                object.put("login_state","0");
                response.getWriter().print(object);
            case 1:
                System.out.println("登陆成功");
                object.put("login_state","1");
                response.getWriter().print(object);
            case 2:
                System.out.println("数据库有相同账号，不允许注册");
                object.put("register_state","same_name");
                response.getWriter().print(object);
            case 3:
                System.out.println("新账号注册成功");
                object.put("register_state","new_account_success");
                response.getWriter().print(object);
            case 4:
                System.out.println("新账号注册失败，未知错误，发生在JDBC及数据库操作中");
                object.put("register_state","new_account_fails");
                response.getWriter().print(object);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
