/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interfaces;

import Modelo.Departamento;
import java.util.List;

/**
 *
 * @author Diegoandres
 */
public interface CRUDDEPARTAMENTO {
     public List listarDepartamento();
    public Departamento list(int id_departamento);
    public boolean add(Departamento per);
    public boolean edit(Departamento per);
    public boolean eliminar(int id_departamento);
    
}
