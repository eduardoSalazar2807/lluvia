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
public class Empleados {
     int id_empleados;
    int id_departamento;
    int id_cargo;
    String email;
    int cod;
    public Empleados(){
    }

    public Empleados(int id_empleados, int id_departamento, int id_cargo, String email,int cod) {
       
        this.id_departamento = id_departamento;
        this.id_cargo = id_cargo;
        this.email = email;
        this.cod = cod;
        
    }

    public int getCod() {
        return cod;
    }

    public void setCod(int cod) {
        this.cod = cod;
    }

    public int getId_empleados() {
        return id_empleados;
    }

    public void setId_empleados(int id_empleados) {
        this.id_empleados = id_empleados;
    }

    public int getId_departamento() {
        return id_departamento;
    }

    public void setId_departamento(int id_departamento) {
        this.id_departamento = id_departamento;
    }

    public int getId_cargo() {
        return id_cargo;
    }

    public void setId_cargo(int id_cargo) {
        this.id_cargo = id_cargo;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
}
