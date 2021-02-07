$(document).ready(function () {
    $("#input_center_box button").click(function () {
        $.ajax({
            type: "post",   // 传输数据方式
            url: "/user_account",    // servlet地址
            data: $("#f").serialize(),   // 传的数据 form表单里的数据
            dataType: "text",
            success: function (data) {
                document.write(data.login_state);
                alert("登陆成功"); // 成功之后的操作
            },
            error: function(){
                alert("faild");
            }
        })
    })
});