$(document).ready(function(){
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
                "linear-gradient(to right, #4942E8, #a63db6)");
            a = 1;
        }else if (a == 1){
            $("#backcolor_box").css("background-image",
                "linear-gradient(to right, #4942E8, #4FB647)");
            a = 2;
        }else if (a == 2){
            $("#backcolor_box").css("background-image",
                "linear-gradient(to right, black, #4FB647)");
            a = 3;
        }else if (a == 3){
            $("#backcolor_box").css("background-image",
                "linear-gradient(to right, black, #FFFFFF)");
            a = 4;
        }else if (a == 4) {
            $("#backcolor_box").css("background-image",
                "linear-gradient(to right, rgb(232, 81, 134), #FFFFFF)");
            a = 5;
        }else if (a == 5){
            $("#backcolor_box").css("background-image",
                "linear-gradient(to right, rgb(232, 81, 134), #a63db6)");
            a = 0;
        }
    });

    //点击发帖弹出发帖栏
    $("#new_topic_box_btn").click(function () {
       $("#new_topic_box").toggle();
    });
});
