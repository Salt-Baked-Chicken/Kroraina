package com.Kroraina.BaseDao;

import com.Kroraina.JavaBean.user_bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

public interface basedao {
    Connection getCon();

    List<user_bean> select(String sql,Object[] params);

    int executeUpdate(String sql,Object[] params);

    void closeAll(Connection con, PreparedStatement psmt, ResultSet rs);
}
