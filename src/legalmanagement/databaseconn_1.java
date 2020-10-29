/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package legalmanagement;
import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;
/**
 *
 * @author jimmelbermudez7
 */
public class databaseconn_1{

 Connection conn=null;
    public static Connection ConnecrDb(){
        
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        String url = "jdbc:sqlserver://localhost:1433;"
                + "databaseName=Administrative;"
                + "user=sa;"
                + "password=admin123;";
        Connection conn = DriverManager.getConnection(url);

            return conn;
        }catch (Exception e){
            JOptionPane.showMessageDialog(null,e);
            return null;
        }
        
        
    }
    
}
