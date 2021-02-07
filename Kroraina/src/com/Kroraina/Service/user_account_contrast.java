package com.Kroraina.Service;

public class user_account_contrast {
    public int login_register(String id,String psw,String type){
        int num = 0;
        user_login_register_jdbc a = new user_login_register_jdbc();
        if (type.equals("0")){
            System.out.println("账户登陆验证");
            int y = a.account_contrast(id,psw);
            if (y == 1){
                num = 1;
                return num;
            }else{
                num = 0;
                return num;
            }
        }else if (type.equals("1")){
            System.out.println("新用户账户注册");
            int y = a.account_contrast(id);
            if (y == 1){
                System.out.println("数据库有相同账号，不允许注册");
                num = 2;
                return num;
            }else{
                System.out.println("没有相同账号，准备注册");
                user_login_register_jdbc register = new user_login_register_jdbc();
                num = register.account_register(id,psw);
                if (num == 1){
                    System.out.println("新账号注册成功");
                    num = 3;
                    return num;
                }else{
                    System.out.println("新账号注册失败，未知错误，发生在JDBC及数据库操作中");
                    num = 4;
                    return num;
                }
            }
        }
        return num;
    }
}
