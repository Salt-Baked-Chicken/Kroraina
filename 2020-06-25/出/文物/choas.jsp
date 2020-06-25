<%--
  Created by IntelliJ IDEA.
  User: yanru
  Date: 2020/1/13
  Time: 16:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>小鸭鸭到第二关了！啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊</title>
</head>
<body>
    <%
        String a = request.getParameter("name");
        if (a.equals("伤心者")){
            out.println("鸭鸭找到这里了！我给你准备了一场遗失已久的演出");
            out.println("</br>");
            out.println("希望小平平喜欢,线索在下面↓");
            out.println("</br>");
            out.println("<a>"+"https://tw.weibo.com/2163553891/4431288641926882"+"</a>");
        }else if(a.equals("笑了")){
            out.println("嘿嘿,我不信,你笑一个");
            out.println("</br>");
            out.println("</br>");
            out.println("啥?没看见,在笑一个,刚刚的不算!");
            out.println("</br>");
            out.println("</br>");
            out.println("哈哈哈,不管你现在开心不开心,这趟旅途已经离终点不远");
            out.println("</br>");
            out.println("</br>");
            out.println("劳逸结合,这是下一个线索,关于学习");
            out.println("</br>");
            out.println("</br>");
            out.println("http://www.yinwang.org/blog-cn/2019/07/12/learning-philosophy");
            out.println("</br>");
            out.println("试着找到这个连接里的第四分之三个内容里的英文单词");
            out.println("</br>");
            out.println("如果找到了,返回首页,再一次搜索一下,探索更多...");
        }else{
            out.println("没有猜对谜题噢,返回再试一试吧");
        }

    %>
    </br></br>
    <a href="index.jsp">点击这里返回首页</a>
</body>
</html>
