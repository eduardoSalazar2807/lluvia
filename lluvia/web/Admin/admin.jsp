<%-- 
    Document   : admin.jsp
    Created on : 07-10-2019, 22:23:21
    Author     : Eduardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>

<%
HttpSession sesion = request.getSession();

 if (sesion.getAttribute("nivel")== null) {
         response.sendRedirect("../index.jsp");  
     }else{
     
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
        <title>JSP Page</title>
    </head>
    <body>
        
        <div align="right">
            
            Benvenido Usuario@ <%= sesion.getAttribute("nombre") %> | 
            
            <a href="../index.jsp?cerrar=true">Cerrar Sesion</a>
            
            <hr>
        </div>
        <h1>Entro como administrador</h1>
    </body>
</html>
