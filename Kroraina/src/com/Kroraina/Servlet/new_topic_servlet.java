package com.Kroraina.Servlet;

import com.Kroraina.Service.topic_curd;
import com.Kroraina.tools.Cookie_get_write;
import com.alibaba.fastjson.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

// 用户发帖
// 只有yanrunzhi账号能发帖
@WebServlet("/new_topic_servlet")
public class new_topic_servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        Cookie_get_write get_user = new Cookie_get_write();
        JSONObject object = new JSONObject();
        topic_curd topic = new topic_curd();
        String title = request.getParameter("title");   // 获取标题和内容
        String content = request.getParameter("content");
        // 获取浏览器cookie里的用户id
        String id = get_user.getCookieByName(request,"name").getValue();
        System.out.println(content);
        topic.new_topic_insert(id,title,content);

        // 这里反馈给ajax用户名标题和内容用来创建盒子
        // 使用前端页面截取数据提交给话题盒子是更好的选择
        object.put("box_id",id);
        object.put("box_title",title);
        object.put("box_content",content);

        response.setContentType("text/html;charset=UTF-8");
        response.getWriter().print(object);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
