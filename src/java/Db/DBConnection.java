package Db;

import java.sql.Connection;
import java.sql.DriverManager;
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
public class DBConnection {

    Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;
    int getData;

    public Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/round1", "root", "root");
        } catch (Exception e) {
            System.out.print(e);
        }
        return con;
    }

    public ResultSet rsQuery(String args) {
        try {
            con = new DBConnection().getConnection();
            stmt = con.createStatement();
            rs = stmt.executeQuery(args);
        } catch (Exception ex) {
        }
        return rs;
    }

    public int getQuery(String args) {
        try {

            con = new DBConnection().getConnection();
            stmt = con.createStatement();
            getData = stmt.executeUpdate(args);
        } catch (Exception ex) {
            
          JOptionPane.showMessageDialog(null,ex);
        }
        finally{
            try {
                stmt.close();
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return getData;
    }
    public static void main(String[] args) {                   
        System.out.println(new DBConnection().getConnection());
    }
}


