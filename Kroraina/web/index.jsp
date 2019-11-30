<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <script src="js/jquery-3.3.1.js"></script>
    <link rel="stylesheet" type="text/css" href="css/refresh_css.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <link rel="stylesheet" type="text/css" href="css/fontello.css">
    <link rel="stylesheet" type="text/css" href="css/animation.css">
    <link rel="stylesheet" type="text/css" href="css/fontello-codes.css">
    <script src="js/main.js" type="text/javascript"></script>
    <title>楼兰 教育更多可能</title>
</head>
<body>
    <hander>
      <!--
          这里打算做一个导航栏
          功能有标题文字-板块下拉栏-功能性板块图片-搜索-个人账户按钮
      -->
        <div id="guide_box">
            <div id="guideleft_box">
                <i class="icon-th-large-outline"></i>
            </div>
            <div id="first_title_text">
                楼兰
            </div>
            <div id="select_box_area">
                <select name="" id="select_box">
                    <option value="交流区">首页</option>
                    <option value="交流区">排行榜</option>
                    <option value="交流区">特洛伊的城堡</option>
                    <option value="交流区">你的建议</option>
                    <option value="交流区">关于</option>
                </select>
            </div>
            <div id="function_area_pic">
                <i class="icon-fort-awesome"></i>
            </div>
            <div id="globe_pic">
                <i class="icon-ravelry"></i>
            </div>
            <div id="bank_pic">
                <i class="icon-bank"></i>
            </div>
            <div id="search_pic">
                <i class="icon-search"></i>
            </div>
            <div id="acount_pic">
                <i class="icon-user-circle"></i>
            </div>
            <div id="acount_page">
                这里是用户账户的信息及功能区
            </div>
        </div>
        <div id="backcolor_box">

        </div>
    </hander>
    <content>
        <!--右侧功能区-->
        <div id="introduction_box">
            <p id="intro_text">楼兰希望为教育带来更多可能</p>
            <div id="login_choose_box">
                <button class="boldtext_btn" type="button"><b>登陆</b></button>
                <button class="boldtext_btn" type="button"><b>注册</b></button>
                <button id="new_topic_box_btn" class="boldtext_btn" onclick="new_topic_box()" type="button"><b>发帖</b></button>
            </div>

            <div id="input_box">
                <div id="input_center_box">
                    <input placeholder="注册 - 输入你的账号" name="user_id">
                    <input placeholder="输入密码" name="password">
                    <input placeholder="输入c y K 3" name="test_robot">
                    <button type="submit">成了！</button>
                </div>
            </div>
        </div>

        <!--话题盒子模板-->
        <div id="topic_box">
            <img id="pic1" src="img/pic0.jpg" alt="">
            <div id="circle_btn_box">
                <div class="circle_btn" id="red"></div>
                <div class="circle_btn" id="yellow"></div>
                <div class="circle_btn" id="blue"></div>
            </div>
            <div id="user_box">
                <div id="ut_title"><b>这儿食堂好糟糕</b></div>
                <div id="user_centece">
                    我们追逐的并非是一个结果，一旦只追求结果，人就会想法设法找近路，我认为最重要的是，想要追求真相的意志
                    <button id="show_more">
                        ...阅读全文
                        <i class="icon-down-dir"></i>
                    </button>
                </div>
                <div id="user_infor">Dissllusion - 中原文化艺术学院</div>

                <div id="function_box">
                    <p><i class="icon-puzzle"></i>酷</p>
                    <p><i class="icon-edit"></i>评论</p>
                    <p><i class="icon-star"></i>收藏</p>
                    <p><i class="icon-resize-full"></i>展开</p>
                    <p><i class="demo-icon icon-export"></i>分享</p>
                </div>
            </div>
        </div>

        <!-- 发帖盒子模板 -->
        <div id="new_topic_box">
            <img id="pic1" src="img/pic0.jpg" alt="">
            <div id="circle_btn_box">
                <div class="circle_btn" id="red"></div>
                <div class="circle_btn" id="yellow"></div>
                <div class="circle_btn" id="blue"></div>
            </div>
            <div id="user_box">
                <div id="ut_title"><b><input id="new_topic_title" placeholder="输入标题" type="text"></b></div>
                <div id="user_centece">
                    <textarea id="new_topic_text" value="输入内容" type="text">输入你的内容</textarea>
                </div>
                </br>
                <div id="user_infor">Dissllusion - 中原文化艺术学院</div>

                <div id="function_box">
                    <p><i class="icon-puzzle"></i>确认发帖</p>
                    <p><i class="icon-edit"></i>取消发帖</p>
                </div>
            </div>
        </div>
    </content>
    <footer>
    </footer>
</body>
</html>
</br>

<!--用户提供高价值信息的不可靠模式
尝试将用户高价值信息提取作为官方收录发布信息模式-->
</html>
