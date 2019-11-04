<%-- 
    Document   : addDepartamento
    Created on : 22-10-2019, 16:21:31
    Author     : Diegoandres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action= "CONTROLA">
            <p>Codigo Departamento:</p>
            <input type="text" name="txtId_departamento" ><br/>
            <p>Codigo Ubicaccion</p>
            <input type="text" name="txtUbicacion"><br/>
            <p>Descripcion:</p>
            <input type="text" name="txtDescripcion" ><br/>
    
            <p class="center-content">
            <input  type="submit" name="accion" value="AgregarDer"><br/>
            </p>
        </form>
    </body>
</html>
