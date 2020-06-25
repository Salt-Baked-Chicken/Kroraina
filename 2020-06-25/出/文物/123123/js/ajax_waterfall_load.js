// 瀑布流加载话题 scroll滚动事件
var initnum = 5;
var takenum = 5;
var pagenum = 1;
$(window).scroll(function () {
    //创建新话题盒子
    function create_topic_box(title, content, id) {
        //二级大盒子
        var topic_dom = $("<div class='topic_box'></div>");
        var img_dom = $("<img class='pic1' src='img/pic0.jpg' alt=''>");
        var circle_dom = $("<div class='circle_btn_box'></div>");
        var user_box_dom = $("<div class='user_box'></div>");
        var user_infor_dom = $("<div class='user_infor'>"
            + id + " - 中原文化艺术学院"+"</div>");
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
        $("content").append(topic_dom);
        //添加二级大盒子
        $(topic_dom).append(img_dom, circle_dom, user_box_dom,
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

    var scroller_hight = $(document).scrollTop();
    if (scroller_hight > 18) {
        $("#guide_box").css("box-shadow","3px 1px 3px #666666");
    }else{
        $("#guide_box").css("box-shadow","");
    }

    var scroller_hight = $(document).scrollTop();
    var view_hight = $(window).height();
    var all_hight = $(document).height();

    if (scroller_hight + view_hight > all_hight - 1) {
        if (pagenum >= 2){
            initnum = pagenum * 5;
            pagenum = pagenum + 1;
        } else if (pagenum == 1) {
            pagenum = pagenum + 1;
        }
        // 创建计算瀑布流页码的表单
        var fff = $("<form style='display: none' id='fff'><form/>");
        var input_v = $("<input name='view_hight' id='fff'>");
        var input_a = $("<input name='all_hight' id='fff'>");
        input_a.val(initnum);
        input_v.val(takenum);
        $("content").append(fff);
        fff.append(input_v,input_a);
        // 瀑布流加载事件
        $.ajax({
            type: "post",
            url: "/topic_loading",
            data: $("#fff").serialize(),
            dataType: "json",
            success: function (data) {
                for (var i = 0; i < data.length; i++) {
                    create_topic_box(data[i].title,data[i].content,data[i].id);
                }
                $("#fff").remove();
            },
            error: function(error){
                console.log(error);
                alert("话题加载失败,请刷新页面");
            }
        });
    }

    //计算展开发帖内容
    $(".show_more").click(function () {
        var y = $(this).prev();
        var b = $(this).parent().parent();
        var row = y.height() - 40;
        y.css("display","block");
        b.css("height",180+row);
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
});