<%-- 
    Document   : listarContrato
    Created on : 31-10-2019, 14:24:32
    Author     : Diegoandres
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Contratos"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.ContratosDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     <h1>contratos</h1>
        <a href="Controlador?accion=add"> Agregar Nuevo</a>
        <table border="1">
            <thead>
                <tr>
                    <th>Codigo Contrato</th  >  
                    <th>Codigo Empleado</th>
                    <th>Nombre Empresa</th>
                    <th>Horas Trabajadas</th>
                    <th>Sueldo</th>
                    
                    
                </tr>
                <%
                    ContratosDAO dao = new ContratosDAO();
                    List<Contratos> list = dao.listarContratos();
                    Iterator<Contratos> iter = list.iterator();
                    Contratos per = null; 
                    while(iter.hasNext()){
                        per = iter.next();
                %>
          <tr>
                    <td><%= per.getId_contratos()%></td>
                    <td><%= per.getId_empleado()%></td>
                    <td><%= per.getNombre_empresa()%></td>
                    <td><%= per.getHoras_trabajadas()%></td>
                    <td><%= per.getSueldo()%></td>
                    
                 

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
