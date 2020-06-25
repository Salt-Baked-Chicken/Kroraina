package com.Kroraina.Servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/my")
public class Jser extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        doPost(request,response);
        PrintWriter out = response.getWriter();
        out.println("你好阿小鸭鸭！恭喜你来到了这里，完成了第一关");
        out.println("</br>");
        out.println("</br>");
        out.println("探险是未知又复杂的迷途，是蛇和老虎的气味斗争");
        out.println("</br>");
        out.println("第二关的谜题与线索，我把它放在了别的地方");
        out.println("</br>");
        out.println("</br>");
        out.println("在这个网站首页的搜索框试一试，输入‘伤心者’。");
        out.println("</br>");
        out.println("对了,还有一个重要的线索,它和你接下来得到的链接有所关联");
        out.println("</br>");
        out.println("↓↓↓");
        out.println("</br>");
        out.println("'13:16与13:22的重合处',拿回来搜索下.");
    }
}
