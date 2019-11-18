<%-- 
    Document   : listarDepartamento
    Created on : 05-11-2019, 9:43:46
    Author     : Eduardo
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
        <link rel="stylesheet" href="../css/Estiloslistar.css">
        <title>JSP Page</title>
    </head>
    <body>
            <center>
        
        <font face="San Francisco" size="3">
        <font face="San Francisco" size="3">
        <label id="titulo"><b>Lista de Departamentos</b></label>
        </font>
        <table id="tabla_datos" border="1">
            <thead> 
                <tr id="thead_bor" height="40px">
                    <th>Codigo Departamento</th>
                    <th>Codigo Ubicacion</th>
                    <th>Nombre de Departamento</th>
                    <th>ACCIONES</th>
                </tr>
                <%
                    DepartamentoDAO dao = new DepartamentoDAO();
                    List<Departamento> list = dao.listarDepartamento();
                    Iterator<Departamento> iter = list.iterator();
                    Departamento per = null;
                    while (iter.hasNext()) {
                        per = iter.next();
                %>
                <tr>
                    <td class="td_contenido" width="15%"><%= per.getId_departamento()%></td>
                    <td class="td_contenido" width="15%"><%= per.getId_ubicacion()%></td>
                    <td class="td_contenido" width="15%"><%= per.getDescripcion()%></td>

                    <th>
                        
                        <a class="boton" href="CONTROLA?accion=EliminarDepar&id=<%= per.getId_departamento()%>">Eliminar</a>

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
