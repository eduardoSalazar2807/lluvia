/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interfaces;

import Modelo.Cargo;
import java.util.List;

/**
 *
 * @author Diegoandres
 */
public interface CRUDCARGO {
    public List listarCargo();
    public Cargo list(int id_cargo);
    public boolean add(Cargo per);
    public boolean edit(Cargo per);
    public boolean eliminar(int id_cargo);
}
