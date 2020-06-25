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
    <title>shit-life</title>
</head>
<body>
    <hander>
        <div id="guide_box">
            <div id="guide_item">
                <div id="guideleft_box">
                    <i class="icon-th-large-outline"></i>
                </div>
                <div id="first_title_text">
                    <a href="#">Shitlife</a>
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
                    <b>关于</b>
                    <button class="let_up">收起展开</button>
                </div>
                <div class="user_centence">
                    想法，起源，和感受。
                </div>
                <button class="show_more">
                    阅读全文
                    <i class="icon-down-dir"></i>
                </button>
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
            <div class="user_infor">Dissllusion - 中原文化艺术学院</div>
            <div class="user_function_box">
                <button id="new_topic_btn"><i class="icon-puzzle"></i>确认发帖</button>
                <p id="cancel_post"><i class="icon-edit"></i>取消发帖</p>
            </div>
        </div>
    </content>
    <footer>
        <script>
            function chaos(){
                alert("hi");
                alert("试着在这个网址的后面加上一些内容");
                alert("加上“my”");
            }
            $("#ppp").submit(function () {
                var d = $("#ppap").val();
                var b = "paper";
                if(d == b){
                    alert("1");
                    function create_topic_box(title, content, id) {
                        //二级大盒子
                        var sidai = $("<div style='background-color: #ff4c7b;' class='left_strip'></div>");
                        var topic_dom = $("<div class='topic_box'></div>");
                        var img_dom = $("<img class='pic1' src='img/pic0.jpg' alt=''>");
                        var circle_dom = $("<div class='circle_btn_box'></div>");
                        var user_box_dom = $("<div class='user_box'></div>");
                        var user_infor_dom = $("<div class='user_infor'>"
                            + id + " - 家里的床上"+"</div>");
                        var user_function_dom = $("<div class='user_function_box'></div>");

                        //circle_dom的小圆按钮
                        var cbd1 = $("<div class='circle_btn' class='red'></div>");
                        var cbd2 = $("<div class='circle_btn' class='yellow'></div>");
                        var cbd3 = $("<div class='circle_btn' class='blue'></div>");

                        //user_box_dom的标题内容等
                        var user_title = $("<div class='ut_title'>"+title+"</div>");
                        var user_centence = $("<div class='user_centence'>"
                            + content + "</div>");
                        var letup = $("<button class='let_up'>收起展开</button>");
                        var show_button = $("<button class='show_more'>阅读全文</button>");
                        var down_icon = $("<i class='icon-down-dir'></i>");

                        //user_function_dom的小工具栏
                        var ppap1 = $("<p>酷</p>");
                        var ppap2 = $("<p>评论</p>");
                        var ppap3 = $("<p>收藏</p>");
                        var ppap4 = $("<p>展开</p>");
                        var ppap5 = $("<p>分享</p>");
                        var function_icon1 = $("<i class='icon-puzzle'></i>");
                        var fi2 = $("<i class='icon-edit'></i>");
                        var fi3 = $("<i class='icon-star'></i>");
                        var fi4 = $("<i class='icon-resize-full'></i>");
                        var fi5 = $("<i class='demo-icon icon-export'></i>");

                        //创建话题盒子
                        $("#first_box").after(topic_dom);
                        //添加二级大盒子
                        $(topic_dom).append(sidai,img_dom, circle_dom, user_box_dom,
                            user_infor_dom, user_function_dom);
                        //二级大盒子的内容元素
                        $(circle_dom).append(cbd1, cbd2, cbd3);
                        $(user_box_dom).append(user_title, user_centence, show_button);
                        $(user_title).append(letup);
                        $(show_button).append(down_icon);
                        $(user_function_dom).append(ppap1, ppap2, ppap3,
                            ppap4, ppap5);
                        $(ppap1).append(function_icon1);
                        $(ppap2).append(fi2);
                        $(ppap3).append(fi3);
                        $(ppap4).append(fi4);
                        $(ppap5).append(fi5);

                        //如果行数不够，就免了展开更多吧_(:з)∠)_
                        var row = user_centence.height();
                        if (row <= 39){
                            $(show_button).css("display","none");
                        }
                    }
                    var conttttent = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;疯言疯语的是意向,失落,还是潮流?</br>" +
                        "亲爱的小平平鸭,我知道我有由衷的想你.我会感觉重复的事情毫无欣喜会略显疲乏,所以我也同样不能确定文字传递给你的力量是什么样的." +
                        "我希望那是一种美妙的感觉,像夏天的风扫过操场上的伴侣,像宇宙里的录音机收到信号后,发现自己并不孤独.</br>" +
                        "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;什么是快乐呢?我刚刚看了vice和陈冠希拍的纪录片," +
                        "里面陈冠希说自己现在很快乐.纪录片一方面表现了陈冠希的行举交流与经历" +
                        "另一方面,展现了他的消费者.18九岁的青年,二十多岁的大蜜和瘦子,每个人也表现得很开心,表达着现代化和个人的美好" +
                        "那种像是在不断被修饰的潮流和群众中不好找到答案的奇妙感觉可能也带给我了一丝快乐和放松,像是有点遗憾的" +
                        "陈冠希说自己的那种定位是,把西方一些不太常有的文化,东西带到亚洲这边来,某种意义上的传递也带来了巨大贡献,无论是商业还是自我" +
                        "我想,他在那份开心的乐趣里,是实现了对自我控制和掌握的自由,面对了过去的痛苦,和当下真实的流畅.</br>" +
                        "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我希望带来思考,我们的快乐是真实的吗?我不能确定.😶</br>" +
                        "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;嘿嘿,小平平,俺知道你可能不会注意到,所以特地要告诉你" +
                        "其实线索连起来是,'my伤心者笑了'不知道在这趟设计短小的旅途中,你有没有感到开心." +
                        "关于生日,我不确定我应该怎样做,换个角度,其实和你一样.我能确定的是希望开开心心的." +
                        "你能确定有所预期,那种预期带来遗憾.不快和伤心.我感觉特别能理解那种感受,就像被抛弃的泰迪熊,后来," +
                        "我对我的家人不再抱有承诺上的很多希望,随着时间的推移,我渐渐更加明白了承诺带来的后果.关于俺为什么不敢承诺</br>" +
                        "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;这不是吐槽,俺希望能带给你更多的角度来观察这个世界,如果你仔细看," +
                        "能发现其实你的爱人记下了日期,准备了关于生日礼物的思考,花费了功夫制作了这些内容,俺信誓旦旦的说这已经很不容易" +
                        "但站在对立面的角度,这就变成了忽视,不在乎,和带来的失望感.但我想,我已经努力传递给你我的感受,你也已经明白了这些</br>" +
                        "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;所以俺还是希望要开开心心的,抱有真实的初衷,真诚的感受和感觉," +
                        "开开心心的面对虚幻的与心灵里弱小的那些补捉不住.希望我们是开心的,真诚的,好的面对这各种各样的经历</br>" +
                        "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;最后,再一次的,真诚的,祝小平平生日快乐:)</br></br>" +
                        "要在这里,输入你想要的礼物：<form style='display: inline-block' id='want_gift'><input style='background-color: pink;box-shadow: 1px 1px 3px;border-radius: 100;" +
                        "height: 35px;width: 200px;'/></form></br>" +
                        "输入完记得回车噢";
                    create_topic_box("给亲爱的信", conttttent, "大酷熊");
                    $("#want_gift").submit(function () {
                        alert("信息已上传数据库😗😗😗");
                        alert("淘宝已下单😎");
                        alert("请等待收货");
                        alert("才鬼咧🤣🤣🤣");
                        alert("QQ上发给我嘛!搞得好像俺可以收到这个信息一样哈哈哈哈哈哈哈哈哈哈");
                    });
                    $(".show_more").click(function () {
                        var y = $(this).prev();
                        var b = $(this).parent().parent();
                        var row = y.height() - 40;
                        y.css("display","block");
                        b.css("height",800+row);
                        var f = $(this).prev().prev().children("button");
                        $(f).css("display","inline-block");
                        $(this).css("display","none");
                    });
                    //隐藏展开的内容
                    $(".let_up").click(function () {
                        var h = $(this).parent().parent().parent();
                        var y = $(this).parent().next();
                        var s = $(this).parent().next().next();
                        $(y).css("display","-webkit-box");
                        $(h).css("height",160);
                        $(s).css("display","block");
                        $(this).css("display","none");
                    });
                    return false;
                }
            })
        </script>
    </footer>
</body>
</html>
</br>
<!--用户提供高价值信息的不可靠模式
尝试将用户高价值信息提取作为官方收录发布信息模式-->
</html>