<%-- 
    Document   : edit
    Created on : 10-10-2019, 21:46:28
    Author     : Diegoandres
--%>

<%@page import="Modelo.Persona"%>
<%@page import="ModeloDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/EstiloAdd.css">
        <title>Modificar</title>
    </head>
    <body>
        <div>
            <%
                PersonaDAO dao = new PersonaDAO();
                String rut = ((String) request.getAttribute("rutper"));
                Persona p = (Persona) dao.list(rut);

            %>

            <h1>Modificar</h1>
            <form action="CONTROLA">          
                <p>Nombre:</p>
                <input type="text" name="txtNombre" value="<%= p.getNom()%>" class="field" required=""><br>
                <p> Apellido:</p>
                <input type="text" name="txtApellido" value="<%= p.getApellido()%>" class="field" required=""><br>
                <p> Email:</p>
                <input type="text" name="txtEmail" value="<%= p.getEmail()%>" class="field" required=""><br>
                <p> Codigo de empledo:</p>
                <input type="tex" name="txtCodEmpleado" value="<%= p.getId_empleado()%>" class="field" readonly="reaonly" ><br>



                <input  type="hidden" name="txtRut" value="<%= p.getRut()%>">
                <p class="center-content">
                <input  type="submit" name="accion" value="Actualizar" class="btn btn-green"><br>
                </p>
                <a href="CONTROLA?accion=listar">Regresar</a>      
            </form>
        </div>
    </body>
</html>
