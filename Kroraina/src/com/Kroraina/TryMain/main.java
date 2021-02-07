package com.Kroraina.TryMain;

import com.Kroraina.BaseDao.topic_curd;

public class main {
    public static void main(String[] args) {
//        //登陆
//        user_curd a = new user_curd();
//        int y = a.account_contrast("acb","776");
//        System.out.println(y);
//        // 注册
//        user_curd a = new user_curd();
//        user_curd register = new user_curd();
//        int y = a.account_contrast("acb","776");
//        System.out.println(y);
//        y = register.account_register("acb","776");
//        System.out.println(y);
        // 发帖测试
        topic_curd abc = new topic_curd();
        String id = "acb";
        String title = "you think other people will do this?";
        String content = "shit";
        abc.newtopic_insert(id,title,content);
    }


}
