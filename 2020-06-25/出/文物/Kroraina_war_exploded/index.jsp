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
    <link rel="stylesheet" href="css/posting_box.css">
    <link rel="stylesheet" href="css/b_animal.css">
    <script src="js/ajax_user_cookie.js" type="text/javascript"></script>
    <script src="js/ajax_sql.js" type="text/javascript"></script>
    <script src="js/ajax_waterfall_load.js" type="text/javascript"></script>
    <script src="js/main.js" type="text/javascript"></script>
    <title>新闻发布系统</title>
</head>
<body>
    <hander>
        <div id="guide_box">
            <div id="guide_item">
                <div id="guideleft_box">
                    <i class="icon-th-large-outline"></i>
                </div>
                <div id="first_title_text">
                    <a href="#">新闻站点设计</a>
                </div>
                <div id="select_box_area">
                    <select name="" id="select_box">
                        <option value="交流区">首页</option>
                        <option value="交流区">排行榜</option>
                        <option value="交流区">圆桌</option>
                        <option value="交流区">建议</option>
                        <option value="交流区">关于</option>
                    </select>
                </div>
                <div id="function_area_pic">
                    <a href="#"><i class="icon-fort-awesome"></i></a>
                </div>
                <div onclick="chaos()" id="globe_pic">
                    <i class="icon-ravelry"></i>
                </div>
                <div id="bank_pic">
                    <i class="icon-bank"></i>
                </div>
                <div id="search_pic">
                    <form id="ppp" style="display: inline-block" action="choas.jsp">
                        <input id="ppap" name="name" type="text">
                    </form>
                    <i class="icon-search"></i>
                </div>

                <div id="acount_box">
                    <div id="acount_pic">
                        <i class="icon-user-circle"></i>
                    </div>
                    <div id="acount_sec_box">
                        <button id="acount_btn">注销</button>
                    </div>
                </div>

                <div id="acount_page">
                    这里是用户账户的信息及功能区
                </div>
            </div>
        </div>
        <div id="backcolor_box">

        </div>
    </hander>
    <content>
        <!--右侧功能区-->
        <div id="introduction_box">
            <div class="left_strip"></div>
            <p id="intro_text">创造更多可能</p>
            <div id="login_choose_box">
                <button class="boldtext_btn" type="button"><b>登陆</b></button>
                <button class="boldtext_btn" type="button"><b>注册</b></button>
                <button id="posting_btn" class="boldtext_btn" type="button"><b>发帖</b></button>
            </div>

            <form id="f" onsubmit="return false" method="post">
                <div id="input_box">
                    <div id="input_center_box">
                        <input placeholder="登陆 - 输入你的账号" name="user_id">
                        <input type="password" placeholder="输入密码" name="password">
                        <input placeholder="输入c y K 3" name="test_robot">
                        <input style="display: none" value="0" type="password" name="type">
                        <button type="submit">确认登陆!</button>
                    </div>
                </div>
            </form>

            <div class="describe_box">
                <p id="des"></p>
            </div>
        </div>

        <!--话题盒子模板--><!-- Demo0-1公告内容 -->
        <div id="first_box" class="topic_box">
            <div class="left_strip"></div>
            <img class="pic1" src="img/pic0.jpg" alt="">
            <div class="circle_btn_box">
                <div class="circle_btn" class="red"></div>
                <div class="circle_btn" class="yellow"></div>
                <div class="circle_btn" class="blue"></div>
            </div>
            <div class="user_box">
                <div class="ut_title">
                    <b>新闻发布系统</b>
                    <button class="let_up">收起展开</button>
                </div>
                <div class="user_centence">
                    新闻是真实的,不能夸张和虚拟的一种时事报道,在人类的日常生活中,新闻起着重要的作用。 新闻可以使人了解外面世界的最新动态,也可以让人增长知识。
                </div>
                <button class="show_more">
                    阅读全文
                    <i class="icon-down-dir"></i>
                </button>
            </div>

            <div class="user_infor">Dissllusion - 河南</div>
            <div class="user_function_box">
                <p><i class="icon-puzzle"></i>酷</p>
                <p><i class="icon-edit"></i>评论</p>
                <p><i class="icon-star"></i>收藏</p>
                <p><i class="icon-resize-full"></i>展开</p>
                <p><i class="demo-icon icon-export"></i>分享</p>
            </div>
        </div>

        <!-- 发帖盒子模板 -->
        <div id="sec_box" class="posting_box">
            <img class="pic1" src="img/pic0.jpg" alt="">
            <form id="topic_form" class="user_box" onsubmit="return false" method="post">
                <div class="ut_title"><b><input name="title" class="posting_title" placeholder="咱这里是标题(￣▽￣)"></b></div>
                <div class="posting_text_box">
                    <div id="fake_content" contenteditable="true" class="posting_text">
                    </div>
                    <span id="tips">你经历了..∑(O_ O||?!</span>
                    <input id="real_content" type="hidden" name="content" value="" />
                </div>
            </form>
            <div class="user_infor">Dissllusion - 河南</div>
            <div class="user_function_box">
                <button id="new_topic_btn"><i class="icon-puzzle"></i>确认发帖</button>
                <p id="cancel_post"><i class="icon-edit"></i>取消发帖</p>
            </div>
        </div>
    </content>
</body>
</html>
</br>
<!--用户提供高价值信息的不可靠模式
尝试将用户高价值信息提取作为官方收录发布信息模式-->
</html>