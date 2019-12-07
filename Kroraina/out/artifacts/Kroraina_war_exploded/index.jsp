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
    <script src="js/main.js" type="text/javascript"></script>
    <script src="js/Ajax_Sql.js" type="text/javascript"></script>
    <title>楼兰 教育更多可能</title>
</head>
<body>
    <hander>
      <!--
          这里打算做一个导航栏
          功能有标题文字-板块下拉栏-功能性板块图片-搜索-个人账户按钮
      -->
        <div id="guide_box">
            <div id="guide_item">
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
                <button id="posting_btn" class="boldtext_btn" onclick="new_topic_box()" type="button"><b>发帖</b></button>
            </div>

            <form id="f">
                <div id="input_box">
                    <div id="input_center_box">
                        <input placeholder="登陆 - 输入你的账号" name="user_id">
                        <input placeholder="输入密码" name="password">
                        <input placeholder="输入c y K 3" name="test_robot">
                        <input style="display: none" value="0" type="password" name="type">
                        <button type="submit">确认登陆!</button>
                    </div>
                </div>
            </form>
        </div>

        <!--话题盒子模板-->
        <div class="topic_box">
            <img class="pic1" src="img/pic0.jpg" alt="">
            <div class="circle_btn_box">
                <div class="circle_btn" id="red"></div>
                <div class="circle_btn" id="yellow"></div>
                <div class="circle_btn" id="blue"></div>
            </div>
            <div class="user_box">
                <div class="ut_title"><b>这儿食堂好糟糕</b></div>
                <div class="user_centence">
                    我们追逐的并非是一个结果，一旦只追求结果，人就会想法设法找近路，我认为最重要的是，想要追求真相的意志
                    <button class="show_more">
                        ...阅读全文
                        <i class="icon-down-dir"></i>
                    </button>
                </div>
            </div>

            <div class="user_infor">Dissllusion - 中原文化艺术学院</div>
            <div class="user_function_box">
                <p><i class="icon-puzzle"></i>酷</p>
                <p><i class="icon-edit"></i>评论</p>
                <p><i class="icon-star"></i>收藏</p>
                <p><i class="icon-resize-full"></i>展开</p>
                <p><i class="demo-icon icon-export"></i>分享</p>
            </div>
        </div>

        <!-- 发帖盒子模板 -->
        <div class="posting_box">
            <img class="pic1" src="img/pic0.jpg" alt="">
            <div class="user_box">
                <div class="ut_title"><b><input class="posting_title" placeholder="这儿是标题"></b></div>
                <div class="posting_text_box">
                    <div contenteditable="true" class="posting_text">你都经历了啥?</div>
                </div>
            </div>
            <div class="user_infor">Dissllusion - 中原文化艺术学院</div>
            <div class="user_function_box">
                <p><i class="icon-puzzle"></i>确认发帖</p>
                <p id="cancel_post"><i class="icon-edit"></i>取消发帖</p>
            </div>
        </div>

        <div class="topic_box">
            <img class="pic1" src="img/pic0.jpg" alt="">
            <div class="circle_btn_box">
                <div class="circle_btn" id="red"></div>
                <div class="circle_btn" id="yellow"></div>
                <div class="circle_btn" id="blue"></div>
            </div>
            <div class="user_box">
                <div class="ut_title"><b>这儿食堂好糟糕</b></div>
                <div class="user_centence">
                    我们追逐的并非是一个结果，一旦只追求结果，人就会想法设法找近路，我认为最重要的是，想要追求真相的意志
                    <button class="show_more">
                        ...阅读全文
                        <i class="icon-down-dir"></i>
                    </button>
                </div>
            </div>

            <div class="user_infor">Dissllusion - 中原文化艺术学院</div>
            <div class="user_function_box">
                <p><i class="icon-puzzle"></i>酷</p>
                <p><i class="icon-edit"></i>评论</p>
                <p><i class="icon-star"></i>收藏</p>
                <p><i class="icon-resize-full"></i>展开</p>
                <p><i class="demo-icon icon-export"></i>分享</p>
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
