/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Config.acceso;
import Modelo.Persona;
import ModeloDAO.PersonaDAO;
import javax.servlet.RequestDispatcher;
/**
 *
 * @author Eduardo
 */
public class CONTROLA extends HttpServlet {
    String  listar = "vistas/listar.jsp";
    String add = "vistas/add.jsp";
    String edit = "vistas/edit.jsp";
    Persona p=new Persona();
    PersonaDAO dao=new PersonaDAO();
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String nombre;
            String contra;
            int nivel =0;
            acceso acc= new acceso();
            RequestDispatcher sd = null;

            if (request.getParameter("btniniciar") != null) {
                nombre = request.getParameter("txtusuario");
                contra = request.getParameter("txtcontra");
                nivel=acc.validar(nombre, contra);
               
                request.setAttribute("nivel", nivel);
                request.setAttribute("nombre", nombre);
                sd=request.getRequestDispatcher("index.jsp");
            }
            sd.forward(request, response);
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso = "";
        String action = request.getParameter("accion");
        if (action.equalsIgnoreCase("listar")) {
            acceso = listar;
        } else if (action.equalsIgnoreCase("add")) {
            acceso = add;

        } else if (action.equalsIgnoreCase("Agregar")) {
            //int  id=Integer.parseInt(request.getParameter("txtId"));  
            String rut = request.getParameter("txtRut");
            String nom = request.getParameter("txtNombre");
            String apellido = request.getParameter("txtApellido");
            String email = request.getParameter("txtEmail");
            String codigo = request.getParameter("txtCodEmpleado");
            int codigo1 = Integer.parseInt(codigo);
            p.setRut(rut);
            p.setNom(nom);
            p.setApellido(apellido);
            p.setEmail(email);
            p.setId_empleado(codigo1);
            dao.add(p);
            acceso = listar;
        } else if (action.equalsIgnoreCase("editar")) {
            request.setAttribute("rutper", request.getParameter("rut"));
            acceso = edit;

        } else if (action.equalsIgnoreCase("Actualizar")) {
            // int  id=Integer.parseInt(request.getParameter("txtid"));  
            String rut = request.getParameter("txtRut");
            String nom = request.getParameter("txtNombre");
            String apellido = request.getParameter("txtApellido");
            String email = request.getParameter("txtEmail");
            String codigo = request.getParameter("txtCodEmpleado");
            int codigo1 = Integer.parseInt(codigo);
            p.setRut(rut);
            p.setNom(nom);
            p.setApellido(apellido);
            p.setEmail(email);
            p.setId_empleado(codigo1);
            dao.edit(p);
            acceso = listar;
        }else if(action.equalsIgnoreCase("eliminar")){
            String rut = request.getParameter("rut");
            p.setRut(rut);
            dao.eliminar(rut);
             acceso=listar;
                     
                     
        }

  
         RequestDispatcher vista = request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
