package com.Kroraina.Servlet;

import com.Kroraina.Service.user_account_contrast;
import com.Kroraina.tools.Cookie_get_write;
import com.alibaba.fastjson.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

// 登陆检测
@WebServlet("/user_account")
public class user_account extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cookie_get_write cookie_user = new Cookie_get_write();
        HttpSession session = request.getSession();
        JSONObject object = new JSONObject();
        String type = request.getParameter("type");
        String id = request.getParameter("user_id");
        String psw = request.getParameter("password");
        user_account_contrast contrast = new user_account_contrast();
        int num = contrast.login_register(id,psw,type);
        switch (num){
            case 0:
                System.out.println("登陆失败");
                object.put("login_state","0");
                response.getWriter().print(object);
                break;
            case 1:
                System.out.println("登陆成功");
                cookie_user.addCookie(response,"name",id,3600);
                cookie_user.addCookie(response,"psw",psw,3600);
                object.put("login_state","1");
                response.getWriter().print(object);
                break;
            case 2:
                System.out.println("数据库有相同账号，不允许注册");
                object.put("register_state","same_name");
                response.getWriter().print(object);
                break;
            case 3:
                System.out.println("新账号注册成功");
                cookie_user.addCookie(response,"name",id,3600);
                cookie_user.addCookie(response,"psw",psw,3600);
                object.put("register_state","new_account_success");
                response.getWriter().print(object);
                break;
            case 4:
                System.out.println("新账号注册失败，未知错误，发生在JDBC及数据库操作中");
                object.put("register_state","new_account_fails");
                response.getWriter().print(object);
                break;
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
