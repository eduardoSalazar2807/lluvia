<%-- 
    Document   : addCargo
    Created on : 17-11-2019, 10:27:01
    Author     : Diegoandres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/EstiloAdd.css">
        <title>JSP Page</title>
    </head>
    <body>
     <form action= "CONTROLA">
                 Codigo Cargo:<br>
                <input type="text" name="txtIdcargo" class="field"><br>
                   Nombre del Cargo:<br>
                   <input type="text" name="txtNombre" class="field"><br>
                   <p class="center-content">
                   <input  type="submit" name="accion" value="AgregarCargo" class="btn btn-green"><br/>
                   </p>
                  
                   </form>
    </body>
</html>
