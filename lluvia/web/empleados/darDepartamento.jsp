<%-- 
    Document   : darDepartamento
    Created on : 20-10-2019, 16:21:41
    Author     : Diegoandres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Pagesss</title>
    </head>
    <body>
                        <%
                    EmpleadosDAO dao = new EmpleadosDAO();
                    List<Empleados> list = dao.listarEmpleado();
                    Iterator<Empleados> iter = list.iterator();
                    Empleados per = null; 
                    while(iter.hasNext()){
                        per = iter.next();
                %>
          <tr>
              <td><%= per.getId_empleados()%></td>
                    <td><%= per.getId_departamento()%></td>
                    <td><%= per.getId_cargo()%></td>
                    <td><%= per.getEmail()%></td>
                    
                 <th>
                     <a href="CONTROLA?accion=departamento&rut=<%= per.getId_empleados()%>">Departamento</a>
                 
                     
                     
                    
                 </th>
          </tr>
          <% 
                    }%>
    </body>
</html>
