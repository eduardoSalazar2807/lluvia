/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import Config.Conexion;
import Modelo.Persona;
import interfaces.CRUD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Diegoandres
 */
public class PersonaDAO implements CRUD{
    
         Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Persona p= new Persona();

    @Override
    public List listar() {
              ArrayList<Persona> list = new ArrayList<>();
        
        String sql="Select * from personas";
        
        try {
            con = cn.getConexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while(rs.next()){
                Persona per = new Persona();
                per.setRut(rs.getString("Rut"));
                per.setNom(rs.getString("nombre"));
                per.setApellido(rs.getString("apellido"));
                per.setEmail(rs.getString("email"));
                per.setId_empleado(rs.getInt("id_empleado"));
                list.add(per);            
            }
            
        } catch (Exception e) {
            System.out.println(e);
        }
        return list; 
    }

    @Override
    public Persona list(String rut) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean add(Persona per) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean edit(Persona per) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(String rut) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
}
