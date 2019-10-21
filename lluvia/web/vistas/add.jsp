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
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h1>Agregar Person</h1>
          <form action= "CONTROLA">
            Rut:<br>
                <input type="text" name="txtRut"><br>
                   Nombre:<br>
                   <input type="text" name="txtNombre"><br>
                   Apellido:<br>
                  <input type="text" name="txtApellido"><br>
                  email<br>
                  <input type="text" name="txtEmail"><br>
                  Codigo de Empleado<br>
                  <input type="text" name="txtCodEmpleado"><br>
                  
                   <input  type="submit" name="accion" value="Agregar"><br>

        </form>
        </center>
    </body>
</html>
