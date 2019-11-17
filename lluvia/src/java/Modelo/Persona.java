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
public class Persona {
        String rut;
   String nom;
   String apellido;
    String email;
    int id_empleado;
    int departamento;
    int cargo;
    
    
     public Persona(){
    }

    public Persona(String rut, String nom, String apellido, String email, int id_empleado, int departamento,int cargo ) {
        this.nom = nom;
        this.apellido = apellido;
        this.email = email;
        this.id_empleado = id_empleado;
         this.departamento = departamento;
          this.cargo = cargo;
    }

    public int getDepartamento() {
        return departamento;
    }

    public void setDepartamento(int departamento) {
        this.departamento = departamento;
    }

    public int getCargo() {
        return cargo;
    }

    public void setCargo(int cargo) {
        this.cargo = cargo;
    }

    public String getRut() {
        return rut;
    }

    public void setRut(String rut) {
        this.rut = rut;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getId_empleado() {
        return id_empleado;
    }

    public void setId_empleado(int id_empleado) {
        this.id_empleado = id_empleado;
    }
     
}
