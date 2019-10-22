/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interfaces;

import Modelo.Empleados;
import java.util.List;

/**
 *
 * @author Diegoandres
 */
public interface CRUDEMPLEADO {
        public List listarEmpleado();
    public Empleados list(int id_empleador);
    public boolean add(Empleados per);
    public boolean edit(Empleados per);
    public boolean eliminar(int id_empleador);
    
    
}
