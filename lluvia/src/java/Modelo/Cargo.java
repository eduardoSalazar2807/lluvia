/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author Diegoandres
 */
public class Cargo {
    int id_Cargo;
    String descripcion;
 public Cargo(){
    }

    public Cargo(int id_Cargo, String descripcion) {
        this.id_Cargo = id_Cargo;
        this.descripcion = descripcion;
    }

    public int getId_Cargo() {
        return id_Cargo;
    }

    public void setId_Cargo(int id_Cargo) {
        this.id_Cargo = id_Cargo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
 
}

