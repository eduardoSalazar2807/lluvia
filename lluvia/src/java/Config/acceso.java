/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Config;

import java.sql.*;
import javax.swing.JOptionPane;

/**
 *
 * @author Eduardo
 */
public class acceso {
    
    Conexion db = new Conexion();
    String sql="";
    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    public acceso() {
    }
    
    
    public int validar(String usuario , String contraseña){
      
        int nivel=0;
        
        try {
            con= db.getConexion();
            sql="SELECT nivel FROM cuenta WHERE Rut='"+usuario+"' AND contraseña='"+contraseña+"'";
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            
            while (rs.next()) {
                nivel=rs.getInt(1);
            }
            con.close();
            rs.close();
            return nivel;
        } catch (SQLException e) {
            return nivel;
            
        }
    }

}
