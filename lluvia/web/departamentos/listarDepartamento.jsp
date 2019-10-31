<%-- 
    Document   : listarDepartamento
    Created on : 22-10-2019, 15:06:46
    Author     : Diegoandres
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Departamento"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.DepartamentoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Departamentos</h1>
        <a href="CONTROLA?accion=addDepartamento"> Crear Nuevo Deparatamento</a>
        <table border="1">
            <thead>
                <tr>
                    <th>Codigo Departamento</th>
                    <th>Codigo ubicacion</th>
                    <th>Descripcion</th>
               
                    <th>ACCIONES</th>
                </tr>
                <%
                    DepartamentoDAO dao = new DepartamentoDAO();
                    List<Departamento> list = dao.listarDepartamento();
                    Iterator<Departamento> iter = list.iterator();
                    Departamento per = null; 
                    while(iter.hasNext()){
                        per = iter.next();
                %>
          <tr>
              <td><%= per.getId_departamento()%></td>
                    <td><%= per.getId_ubicacion()%></td>
                    <td><%= per.getDescripcion()%></td>
                    
                 <th>
                     <a  href="CONTROLA?accion=EliminarDepar&idD=<%= per.getId_departamento()%>">eliminal</a>
                    
                      
                 
                     
                     
                    
                 </th>
          </tr>
          <% 
                    }%>
            </thead>
            <tbody>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </tbody>
        </table>
          
            
            
            
            
    </body>
</html>
