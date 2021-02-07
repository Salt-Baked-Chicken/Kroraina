$(document).ready(function () {
    // 这里获取用户账号密码cookie，并加载到下方ajax的data中
    // 进入后台user_cookie_servlet文件进行数据库判断
    // 用处是自动检测cookie登陆
    function getcookie_forkey() {
        // 创建一个json，获取cookie存进去
        var cookie_key;
        var cookie_value;
        var cookie = document.cookie;
        var cookiearray = cookie.split(';');
        for (var i = 0; i < cookiearray.length; i++){
            var name = cookiearray[i].split('=')[0];
            var value = cookiearray[i].split('=')[1];
            if (name = "name"){
                cookie_key = name;
                cookie_value = value;
            }
        }
        var Jason = { cookie_key:cookie_value };
        return Jason;
    }

    // 过滤器初始化页面时加载ajax，读取用户cookie值并进行数据库判断
    // 下面这个ajax应该被所有页面读取，拉单独头文件加载
    $.ajax({
        type: "post",
        url: "/user_cookie_Servlet",
        data: getcookie_forkey(),
        dataType: "json",
        success: function () {
            $(".boldtext_btn:lt(2)").hide();
            $("#acount_pic").css("display","block");
            $("#f").css("display","none");
        },
        error: function(error){
            console.log(error);
        }
    })
});