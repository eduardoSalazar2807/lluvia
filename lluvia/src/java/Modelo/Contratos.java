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
public class Contratos {
    int id_contratos;
    int id_empleado;
    String nombre_empresa;
    String horas_trabajadas;
    int sueldo;
    public Contratos(){
    }

    public Contratos(int id_contratos, int id_empleado, String nombre_empresa, String horas_trabajadas, int sueldo) {
        this.id_contratos = id_contratos;
        this.id_empleado = id_empleado;
        this.nombre_empresa = nombre_empresa;
        this.horas_trabajadas = horas_trabajadas;
        this.sueldo = sueldo;
    }

    public int getId_contratos() {
        return id_contratos;
    }

    public void setId_contratos(int id_contratos) {
        this.id_contratos = id_contratos;
    }

    public int getId_empleado() {
        return id_empleado;
    }

    public void setId_empleado(int id_empleado) {
        this.id_empleado = id_empleado;
    }

    public String getNombre_empresa() {
        return nombre_empresa;
    }

    public void setNombre_empresa(String nombre_empresa) {
        this.nombre_empresa = nombre_empresa;
    }

    public String getHoras_trabajadas() {
        return horas_trabajadas;
    }

    public void setHoras_trabajadas(String horas_trabajadas) {
        this.horas_trabajadas = horas_trabajadas;
    }

    public int getSueldo() {
        return sueldo;
    }

    public void setSueldo(int sueldo) {
        this.sueldo = sueldo;
    }
   
}
