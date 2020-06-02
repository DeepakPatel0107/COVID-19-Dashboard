package Db;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author SPVAIG
 */
public class GetQuery {

    ResultSet rs = null;
    boolean status = false;
    Statement stmt = null;
    Connection c = new DBConnection().getConnection();

    public ResultSet getResultSetQuery(String query) {
        try {
            stmt = c.createStatement();
            rs = stmt.executeQuery(query);
        } catch (Exception e) {
//           JOptionPane.showMessageDialog(null, e);
        } finally {            
        }
        return rs;

    }

    public boolean getinsertUpdateQuery(String sql) {
        try {
            stmt = c.createStatement();
            int i = stmt.executeUpdate(sql);
            if (i > 0) {
                status = true;
            } else {
                status = false;
            }
        } catch (Exception e) {
//            JOptionPane.showMessageDialog(null, e);
        } finally {
            try {
                stmt.close();
                c.close();
            } catch (SQLException ex) {
                //Logger.getLogger(GetQuery.class.getName()).log(Level.SEVERE, null, ex);
            }
            
        }
        return status;
    }

}
