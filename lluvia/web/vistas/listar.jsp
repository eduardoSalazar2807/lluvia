<%-- 
    Document   : listar
    Created on : 18-10-2019, 12:45:34
    Author     : Diegoandres
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.PersonaDAO"%>
<%@page import="Modelo.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Personas</h1>
        <a href="CONTROLA?accion=add"> Agregar Nuevo</a>
        <table border="1">
            <thead>
                <tr>
                    <th>Rut</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Email</th>
                    <th>Codigo de empleado</th>
                    <th>ACCIONES</th>
                </tr>
                <%
                    PersonaDAO dao = new PersonaDAO();
                    List<Persona> list = dao.listar();
                    Iterator<Persona> iter = list.iterator();
                    Persona per = null;
                    while (iter.hasNext()) {
                        per = iter.next();
                %>
                <tr>
                    <td><%= per.getRut()%></td>
                    <td><%= per.getNom()%></td>
                    <td><%= per.getApellido()%></td>
                    <td><%= per.getEmail()%></td>
                    <td><%= per.getId_empleado()%></td>

                    <th>
                        <a href="CONTROLA?accion=editar&rut=<%= per.getRut()%>">Editar</a>
                        <a href="CONTROLA?accion=eliminar&rut=<%= per.getRut()%>">Eliminar</a>

                        <a href="Controlador?accion=AcignarDepar&rut=<%= per.getRut()%>">Departamento </a>



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
