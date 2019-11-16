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
        <link rel="stylesheet" href="../css/Estiloslistar.css">
        <title>LISTAS</title>
    </head>
    <body>
    <center>
        
        <font face="San Francisco" size="3">
        <font face="San Francisco" size="3">
        <label id="titulo"><b>Lista de Trabajadores</b></label>
        </font>
        <table id="tabla_datos" border="1">
            <thead> 
                <tr id="thead_bor" height="40px">
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
                    <td class="td_contenido" width="15%"><%= per.getRut()%></td>
                    <td class="td_contenido" width="15%"><%= per.getNom()%></td>
                    <td class="td_contenido" width="15%"><%= per.getApellido()%></td>
                    <td class="td_contenido" width="15%"><%= per.getEmail()%></td>
                    <td class="td_contenido" width="15%"><%= per.getId_empleado()%></td>

                    <th>
                        <a class="boton" href="CONTROLA?accion=editar&rut=<%= per.getRut()%>">Editar</a>
                        <a class="boton" href="CONTROLA?accion=eliminar&rut=<%= per.getRut()%>">Eliminar</a>

                    </th>
                </tr>
                <%
              }%>
            </thead>
        </table>
            </font>
            </center>
    </body>
</html>
