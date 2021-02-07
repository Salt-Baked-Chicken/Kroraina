package com.Kroraina.Servlet;

import com.Kroraina.JavaBean.topic_bean;
import com.Kroraina.Service.topic_curd;
import com.alibaba.fastjson.JSON;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/topic_loading")
    public class topic_loading extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int b = 0;
        int c = 5;
        topic_curd mr_topic = new topic_curd();
        String view_hight = request.getParameter("view_hight");
        String all_hight = request.getParameter("all_hight");
        try{
            b = Integer.parseInt(all_hight);
            c = Integer.parseInt(view_hight);
        }catch (NumberFormatException e){
            e.printStackTrace();
        }
        List<topic_bean> list = mr_topic.topic_loading(b,c);
        String str = JSON.toJSONStringWithDateFormat(list,null); // List转为分割JSON对象

        response.setContentType("text/html;charset=UTF-8");
        response.getWriter().print(str);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
