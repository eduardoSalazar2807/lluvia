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
       String sql="Select * from personas where Rut="+rut;
        
        try {
            con = cn.getConexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while(rs.next()){
                
                p.setRut(rs.getString("Rut"));
                p.setNom(rs.getString("nombre"));
                p.setApellido(rs.getString("apellido"));
                p.setEmail(rs.getString("email"));
                p.setId_empleado(rs.getInt("Id_empleado"));
                            
            } 
            
        } catch (Exception e) {
           
        }
        return p;
           }

    @Override
    public boolean add(Persona per) {
           int  gg=1;
           String horas ="45 horas semanales";
           String empresa="Lluvia";
           int sueldo=500000;
            String sql="insert into personas(Rut,nombre,apellido,email,Id_empleado) values ('"+per.getRut()+"','"+per.getNom()+"','"+per.getApellido()+"','"+per.getEmail()+"','"+per.getId_empleado()+"')";
     try  {
           con= cn.getConexion();
           ps = con.prepareStatement(sql);
           ps.executeUpdate();
     }catch (Exception e){
     }  
     //contrato
     sql="insert into contrato(id_empleado,Nombre_empresa,departamento,cargo,Horas_Trabajo,sueldo) values ('"+per.getId_empleado()+"','"+empresa+"','"+per.getDepartamento()+"','"+per.getCargo()+"','"+horas+"','"+sueldo+"')";
     try  {
           con= cn.getConexion();
           ps = con.prepareStatement(sql);
           ps.executeUpdate();
     }catch (Exception e){
     }

   //empleado
      sql="insert into empleado(id_empleador,id_departamento,id_cargo,email) values ('"+per.getId_empleado()+"','"+per.getDepartamento()+"','"+per.getCargo()+"','"+per.getEmail()+"')";
     try  {
           con= cn.getConexion();
           ps = con.prepareStatement(sql);
           ps.executeUpdate();
     }catch (Exception e){
     }
     return false; 
    }

    @Override
    public boolean edit(Persona per) {
     String sql="update personas set nombre='"+per.getNom()+"',apellido='"+per.getApellido()+"',email='"+per.getEmail()+"',Id_empleado='"+per.getId_empleado()+"' where Rut="+per.getRut();
     try  { 
           con = cn.getConexion();
           ps = con.prepareStatement(sql);
            ps.executeUpdate();
     }catch (Exception e){
     } 
        return false;   
    }

    @Override
    public boolean eliminar(String rut) {
       String sql="delete from personas where Rut="+rut;
    try  {
           con = cn.getConexion();
           ps = con.prepareStatement(sql);
            ps.executeUpdate();
     }catch (Exception e){
     } 
        return false; }
    
    
}
