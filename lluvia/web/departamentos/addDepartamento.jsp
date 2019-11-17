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
        <link rel="stylesheet" href="../css/EstiloAdd.css">
        <title>Agregar Departamento</title>
    </head>
    <body>
        <form action= "CONTROLA">
            <p>Codigo Ubicaccion</p>
            <input type="text" name="txtUbicacion" class="field" required=""><br/>
            <p>Descripcion:</p>
            <input type="text" name="txtDescripcion" class="field" required="" ><br/>
    
            <p class="center-content">
            <input  type="submit" name="accion" value="AgregarCargo" class="btn btn-green"><br/>
            </p>
        </form>
    </body>
</html>
