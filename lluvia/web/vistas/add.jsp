<%-- 
    Document   : add
    Created on : 10-10-2019, 21:46:10
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
            <p>Rut:</p>
            <input type="text" name="txtRut" class="field" required=""><br/>
            <p>Nombre:</p>
            <input type="text" name="txtNombre" class="field" required=""><br/>
            <p>Apellido:</p>
            <input type="text" name="txtApellido" class="field" required=""><br/>
            <p>email</p>
            <input type="text" name="txtEmail" class="field" required=""><br/>
            <p>Codigo de Empleado</p>
            <input type="text" name="txtCodEmpleado" class="field" required=""><br/>
            
            <p class="center-content">
            <input  type="submit" name="accion" value="Agregar" class="btn btn-green"><br/>
            </p>
        </form>
</body>
</html>
