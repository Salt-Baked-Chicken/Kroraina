$(document).ready(function(){
    function deleteCookie(name){
        var date = new Date();
        date.setTime(date.getTime()-10000);
        document.cookie=name+"=v; expires="+date.toGMTString()+"; path=/;";
    }

    // 点击出现右边用户栏和左边点击功能未开放
    $("#guideleft_box").click(function(){
        alert("此功能未开放");
    });
    $("#acount_pic").click(function () {
        $("#acount_page").animate({width:'toggle'},500);
    });

    // 背景条点击变色
    var a = 0;
    $("#backcolor_box").click(function () {
        if (a == 0){
            $("#backcolor_box").css("background-image",
                "linear-gradient(#5b0a85, #141e75)");
            a = 1;
        }else if (a == 1){
            $("#backcolor_box").css("background-image",
                "linear-gradient(to right, #f03752, rgba(234, 166, 163, 0.8), #f03752)");
            a = 2;
        }else if (a == 2){
            $("#backcolor_box").css("background-image",
                "linear-gradient(to bottom, #116212, #e0e0e0)");
            a = 3;
        }else if (a == 3){
            $("#backcolor_box").css("background-image",
                "linear-gradient(to bottom, black, #e0e0e0)");
            a = 4;
        }else if (a == 4) {
            $("#backcolor_box").css("background-image",
                "linear-gradient(to bottom right, rgb(232, 81, 134), #FFFFFF)");
            a = 5;
        }else if (a == 5){
            $("#backcolor_box").css("background-image",
                "linear-gradient(to right, rgba(13, 19, 57, 0.85), #51061a)");
            a = 0;
        }
    });

    //点击发帖弹出发帖栏
    $("#posting_btn").click(function () {
       $(".posting_box").toggle();
    });
    $("#cancel_post").click(function () {
       $(".posting_box").hide();
    });

    //登陆注册按钮修改相应信息
    $("#login_choose_box button:first-child").click(function () {
        $("#input_center_box input:first-child").attr("placeholder","登陆 - 输入你的账号");
        $("#input_center_box input:nth-child(4)").attr("value","0");
        alert($("#input_center_box input:nth-child(4)").val());
        $("#input_center_box button").text("确认登陆!");
    })
    $("#login_choose_box button:nth-child(2)").click(function () {
        $("#input_center_box input:first-child").attr("placeholder","注册 - 输入你的账号");
        $("#input_center_box input:nth-child(4)").attr("value","1");
        alert($("#input_center_box input:nth-child(4)").val());
        $("#input_center_box button").text("确认注册!");
    });

    $("#acount_pic").hover(function () {
        $("#acount_sec_box").show();
    });
    $("#acount_box").mouseleave(function () {
        $("#acount_sec_box").hide();
    });

    $("#acount_sec_box").click(function () {
        deleteCookie("name");
        deleteCookie("psw");
        window.location.reload();
    });

    //用户点击发帖输入框后提示输入内容
    var tips = 0;
    $("#fake_content").focus(function () {
        if (tips == 0){
            $("span").css("display","inline").fadeOut(3000);
            tips = 1;
        } else if (tips == 1) {
            return
        }
    });

    $(".describe_box").hover(function () {
        $("#des").html(
            "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
            "它是一个告示牌");
    }).mouseleave(function () {
        $("#des").text("");
    })

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