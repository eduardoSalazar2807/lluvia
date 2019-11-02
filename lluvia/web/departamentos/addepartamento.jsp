<%-- 
    Document   : addepartamento
    Created on : 02-11-2019, 0:27:30
    Author     : Eduardo
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
            <p>id_ubicacion:</p>
            <input type="text" name="txtubicacion" class="field" required=""><br/>
            <p>Descripcion:</p>
            <input type="text" name="txtdescripcion" class="field" required=""><br/>
            <p class="center-content">
                <input  type="submit" name="accion" value="Agregardep" class="btn btn-green"><br/>
            </p>
        </form> 
    </body>
</html>
