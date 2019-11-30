package com.Kroraina.BaseDao;

import java.sql.Connection;
import java.sql.PreparedStatement;

public interface basedao {

    Connection getCon();

    void closeAll(PreparedStatement pstmt,Connection con);
}
