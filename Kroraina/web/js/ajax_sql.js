$(document).ready(function () {
    //创建新话题盒子
    function create_topic_box(i,title, content, id) {
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
        var show_button = $("<button class='show_more'>...阅读全文</button>");
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
        if (i == 0) {
            $("#sec_box").after(topic_dom);
        }else{
            $("content").append(topic_dom);
        }
        //添加二级大盒子
        $(topic_dom).append(img_dom, circle_dom, user_box_dom,
            user_infor_dom, user_function_dom);
        //二级大盒子的内容元素
        $(circle_dom).append(cbd1, cbd2, cbd3);
        $(user_box_dom).append(user_title, user_centence);
        $(user_centence).append(show_button);
        $(show_button).append(down_icon);
        $(user_function_dom).append(ppap1, ppap2, ppap3,
            ppap4, ppap5);
        $(ppap1).append(function_icon1);
        $(ppap2).append(fi2);
        $(ppap3).append(fi3);
        $(ppap4).append(fi4);
        $(ppap5).append(fi5);
    }

    // 首页的登陆按钮，提交帐号密码的注册登录
    $("#input_center_box button").click(function () {
        $.ajax({
            type: "post",
            url: "/user_account",
            data: $("#f").serialize(),
            dataType: "json",
            success: function (data) {
                alert(data.login_state);
                $(".boldtext_btn:lt(2)").hide();
                $("#acount_pic").css("display","block");
                $("#f").css("display","none");
            },
            error: function(){
                alert("faild");
            }
        })
    });

    // 输送发帖内容至数据库
    $("#new_topic_btn").click(function () {
        // text数据调出不乱码
        var content = $("#fake_content").text();
        $("#real_content").val(content);
        $.ajax({
            type: "post",
            url: "/new_topic_servlet",
            data: $("#topic_form").serialize(),
            dataType: "json",
            success: function (data) {
                create_topic_box(0,data.box_title,data.box_content,data.box_id);
                $(".posting_box").hide();
            },
            error: function(error){
                alert("发帖失败,重新试试");
            }
        })
    });

    // 页面初始化内容加载
    var initnum = 0;
    var takenum = 5;
    var fff = $("<form style='display: none' id='fff'></form>");
    var inputv = $("<input style='display: none' name='view_hight'/>");
    var inputa = $("<input style='display: none' name='all_hight'/>");
    inputa.val(initnum);
    inputv.val(takenum);
    $("content").append(fff);
    fff.append(inputv,inputa);
    $.ajax({
        type: "post",
        url: "/topic_loading",
        data: null,
        dataType: "json",
        success: function (data) {
            for (var i = 0; i < data.length; i++) {
                create_topic_box(1,data[i].title,data[i].content,data[i].id);
            }
            $("#fff").remove();
        },
        error: function(error){
            console.log(error);
            alert("初始话题加载失败,请刷新页面");
        }
    })
});