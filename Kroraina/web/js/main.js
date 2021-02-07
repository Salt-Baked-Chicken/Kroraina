$(document).ready(function(){
    function deleteCookie(name){
        var date=new Date();
        date.setTime(date.getTime()-10000);
        document.cookie=name+"=v; expires="+date.toGMTString();
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
                "linear-gradient(to right, #F28E16, #a63db6)");
            $("#backcolor1_box").css("background-image",
                "linear-gradient(to right, #4942E8, #a63db6)");
            a = 1;
        }else if (a == 1){
            $("#backcolor_box").css("background-image",
                "linear-gradient(to right, #4942E8, #4FB647)");
            $("#backcolor1_box").css("background-image",
                "linear-gradient(to right, #4942E8, #4FB647)");
            a = 2;
        }else if (a == 2){
            $("#backcolor_box").css("background-image",
                "linear-gradient(to right, black, #4FB647)");
            $("#backcolor1_box").css("background-image",
                "linear-gradient(to right, black, #4FB647)");
            a = 3;
        }else if (a == 3){
            $("#backcolor_box").css("background-image",
                "linear-gradient(to right, black, #FFFFFF)");
            $("#backcolor1_box").css("background-image",
                "linear-gradient(to right, black, #FFFFFF)");
            a = 4;
        }else if (a == 4) {
            $("#backcolor_box").css("background-image",
                "linear-gradient(to right, rgb(232, 81, 134), #FFFFFF)");
            $("#backcolor1_box").css("background-image",
                "linear-gradient(to right, rgb(232, 81, 134), #FFFFFF)");
            a = 5;
        }else if (a == 5){
            $("#backcolor_box").css("background-image",
                "linear-gradient(to right, rgb(232, 81, 134), #a63db6)");
            $("#backcolor1_box").css("background-image",
                "linear-gradient(to right, rgb(232, 81, 134), #a63db6)");
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
        $("#acount_sec_box").hide();
        window.location.reload();
    });
});