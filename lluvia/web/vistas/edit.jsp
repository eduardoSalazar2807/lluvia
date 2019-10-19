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
        <title>JSP Page</title>
    </head>
    <body>
       <div>
              <%
                    PersonaDAO dao = new PersonaDAO();
                    String rut=((String)request.getAttribute("rutper"));
                    Persona p=(Persona)dao.list(rut); 
                    
                %>
           
            <h1>Modificar</h1>
             <form action="CONTROLA">          
                   Nombre:<br>
                   <input type="text" name="txtNombre" value="<%= p.getNom()%>"><br>
                   Apellido:<br>
                   <input type="text" name="txtApellido" value="<%= p.getApellido()%>"><br>
                   Email:<br>
                   <input type="text" name="txtEmail" value="<%= p.getEmail()%>"><br>
                   Codigo de empledo:<br>
                   <input type="tex" name="txtCodEmpleado" value="<%= p.getId_empleado()%>" readonly="reaonly" ><br>
                   
                   
                   
                   <input  type="hidden" name="txtRut" value="<%= p.getRut()%>">
                   
                   <input  type="submit" name="accion" value="Actualizar"><br>
                   
                   <a href="CONTROLA?accion=listar">Regresar</a>      
            </form>
        </div>
    </body>
</html>
