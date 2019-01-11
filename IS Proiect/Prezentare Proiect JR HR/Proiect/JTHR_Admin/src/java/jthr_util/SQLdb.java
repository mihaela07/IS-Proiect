package jthr_util;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * @author Alex Cozma
 */

public class SQLdb {
    final String db_driver = "com.mysql.jdbc.Driver";
    final String db_url = "jdbc:mysql://localhost:3306/jthr_admin?zeroDateTimeBehavior=convertToNull";
    final String db_user = "root";
    final String db_password = "";
    
    Connection conn;
    Statement statem;
    PreparedStatement ps;
    ResultSet result;

    public SQLdb() {
        
    }
    
    public void Connect(){
        
        try {
            
            Class.forName(this.db_driver).newInstance();
            
            this.conn = DriverManager.getConnection(this.db_url,this.db_user,this.db_password);
            this.statem = conn.createStatement();
        } catch (InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException ex) {
            Logger.getLogger(SQLdb.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void closeConnection(){
        try {
            this.conn.close();
            this.statem.close();
            if(this.ps != null)
                this.ps.close();
            if(this.result != null)
                this.result.close();
                
        } catch (SQLException ex) {
            Logger.getLogger(SQLdb.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void executeSQL(String sql){
        try {
            if(sql.contains("INSERT") || sql.contains("UPDATE") || sql.contains("DELETE")){
                this.ps = this.conn.prepareStatement(sql);
                this.ps.execute();
            }else{
                this.result = this.statem.executeQuery(sql);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SQLdb.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public ResultSet getResult(){
        return this.result;
    }
}
