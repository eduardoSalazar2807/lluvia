/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import Config.Conexion;
import Modelo.Cargo;
import interfaces.CRUDCARGO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Diegoandres
 */
public class CargoDAO implements CRUDCARGO {
 Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Cargo c=new Cargo();
    @Override
    public List listarCargo() {
         ArrayList<Cargo> list = new ArrayList<>();

        String sql = "Select * from cargo";

        try {
            con = cn.getConexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Cargo per = new Cargo();
                per.setId_Cargo(rs.getInt("id_Cargo"));
                per.setDescripcion(rs.getString("descripcion"));
                list.add(per);
            }

        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
 }

    @Override
    public Cargo list(int id_cargo) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean add(Cargo per) {
           String sql = "insert into cargo(id_cargo,descripcion) values ('" + per.getId_Cargo()+ "','" + per.getDescripcion()+ "')";
        try {
            con = cn.getConexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false; }

    @Override
    public boolean edit(Cargo per) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(int id_cargo) {
           String sql="delete from cargo where id_cargo="+id_cargo;
    try  {
           con = cn.getConexion();
           ps = con.prepareStatement(sql);
            ps.executeUpdate();
     }catch (Exception e){
     } 
        return false; 
    }
    }
    
