package com.Kroraina.BaseDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class curd_try extends basedaoImpl{
    public void ttty(){
        Connection conn=null;
        PreparedStatement pstmt=null;
        try {
            conn = getCon();
            pstmt = conn.prepareStatement("SELECT * FROM USER");
            ResultSet rs= pstmt.executeQuery();
            while(rs.next()){
                System.out.println(rs.getString("User_name"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
