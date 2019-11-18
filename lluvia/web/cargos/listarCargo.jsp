<%-- 
    Document   : listarcargo
    Created on : 16-11-2019, 19:13:17
    Author     : Diegoandres
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Cargo"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.CargoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/Estiloslistar.css">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Cargos</h1>
        <a href="CONTROLA?accion=addcargo">Nuevo Cargo</a>
        <table id="tabla_datos" border="1">
            <thead>
                <tr id="thead_bor" height="40px">
                    <th>Codigo Cargo</th>
                    <th>Nombre Cargo</th>

                    <th>ACCIONES</th>
                </tr>
                <%
                    CargoDAO dao = new CargoDAO();
                    List<Cargo> list = dao.listarCargo();
                    Iterator<Cargo> iter = list.iterator();
                    Cargo per = null;
                    while (iter.hasNext()) {
                        per = iter.next();
                %>
                <tr>
                    <td class="td_contenido" width="15%"><%= per.getId_Cargo()%></td>
                    <td class="td_contenido" width="15%"><%= per.getDescripcion()%></td>



                    <th>


                        <a class="boton" href="CONTROLA?accion=eliminarCargo&id=<%= per.getId_Cargo()%>">Eliminar</a>

                    </th>




                    </th>
                </tr>
                <%
              }%>
            </thead>
        </table>

    </body>
</html>
