
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import Config.Conexion;
import Modelo.Contratos;
import interfaces.CRUDCONTRATOS;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Diegoandres
 */
public class ContratosDAO implements CRUDCONTRATOS{
 Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Contratos p= new Contratos();
    @Override
    public List listarContratos() {
          ArrayList<Contratos> list = new ArrayList<>();
        
        String sql="Select * from contrato";
        
        try {
            con = cn.getConexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while(rs.next()){
                Contratos per = new Contratos();
                per.setId_contratos(rs.getInt("id_contrato"));
                per.setId_empleado(rs.getInt("id_empleado"));
                per.setNombre_empresa(rs.getString("Nombre_empresa"));
                per.setDepartamento(rs.getInt("departamento"));
                per.setCargo(rs.getInt("cargo"));
                per.setHoras_trabajadas(rs.getString("Horas_Trabajo"));
                per.setSueldo(rs.getInt("sueldo"));
                list.add(per);            
            }
            
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;  }

    @Override
    public Contratos list(int id_contrato) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean add(Contratos per) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean edit(Contratos per) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(int id_contrato) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
