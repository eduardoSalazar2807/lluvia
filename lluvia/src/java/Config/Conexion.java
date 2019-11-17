/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Config;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Eduardo
 */
public class Conexion {
    
       Connection conexion;
    
    public Conexion(){
        try {
           Class.forName("com.mysql.jdbc.Driver");
           conexion = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/backoffice","root","");
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    
    public Connection getConexion(){
        return conexion;
    } 
   
    
    
    
    
    
/*    
    String url;
    String user;
    String contra;
    String driver;

    public Conexion() {
        this.url = "jdbc:mysql://localhost:3306/backoffice";
        this.user = "root";
        this.contra = "";
        this.driver = "com.mysql.jdbc.Driver";
    }

    public String getUrl() {
        return url;
    }

    public String getUser() {
        return user;
    }

    public String getContra() {
        return contra;
    }

    public String getDriver() {
        return driver;
    }
    
  */    
}
