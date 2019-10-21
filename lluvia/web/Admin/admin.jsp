<%-- 
    Document   : admin.jsp
    Created on : 07-10-2019, 22:23:21
    Author     : Eduardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>

<%
    HttpSession sesion = request.getSession();

    if (sesion.getAttribute("nivel") == null) {
        response.sendRedirect("../index.jsp");
    } else {

        String nivel = sesion.getAttribute("nivel").toString();
        if (!nivel.equals("1")) {
            response.sendRedirect("../index.jsp");
        }
    }

%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/Estilosadmin.css">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="menu">
            <ul>
                <li><a href="#">Crear Empleados</a></li>
                <li> <a  href="http://localhost:8084/lluvia//CONTROLA?accion=listar">Listar Persona</a></li>
                <li class="item-r"><a href="../index.jsp?cerrar=true">Cerrar Sesion</a></li>
            </ul>
        </div>       
    </body>
</html>