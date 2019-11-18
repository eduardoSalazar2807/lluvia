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
        <title>Principal</title>
    </head>
    <body>
                    Benvenido Usuario@ <%= sesion.getAttribute("nombre") %> 
        <div class="contenedor" align="center">
            <ul class="nav">
                <li><a>Trabajadores</a>
                    <ul>
                        <li> <a href="http://localhost:8084/lluvia//CONTROLA?accion=add"> Agregar Trabajador</a></li>
                        <li> <a  href="http://localhost:8084/lluvia//CONTROLA?accion=listar">Mostrar Trabajador</a></li>		
                    </ul>
                </li>
            </ul>
            <ul class="nav">
                <li><a>empleado</a>
                    <ul>
                        <li><a href="http://localhost:8084/lluvia//CONTROLA?accion=MosEmpleados">Empleado</a></li>		
                    </ul>
                </li>
            </ul>
            <ul class="nav">
                <li><a>Departamento</a>
                    <ul>
                        <li><a class="boton" href="http://localhost:8084/lluvia//CONTROLA?accion=addDepartamento">Agregar Departamento</a></li>
                        <li><a href="http://localhost:8084/lluvia//CONTROLA?accion=MostrarDepartamento">Mostrar Departamento</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav">
                <li><a>Cargo</a>
                    <ul>
                        
                        <li><a href="http://localhost:8084/lluvia//CONTROLA?accion=addCargo">Agregar cargo</a></li>
                        <li><a href="http://localhost:8084/lluvia//CONTROLA?accion=listarCargo">Mostrar Cargo</a></li>

                    </ul>
                </li>
            </ul>
            <ul class="nav">
                <li><a>Contratos</a>
                    <ul>
                        <li><a href="http://localhost:8084/lluvia//CONTROLA?accion=Contratos">Mostrar Contratos</a></li>
                        
                    </ul>
                </li>
                <li><a href="../index.jsp?cerrar=true">Cerrar Sesion</a></li>
            </ul>
        </div>       
    </body>
</html>