<%-- 
    Document   : add
    Created on : 10-10-2019, 21:46:10
    Author     : Diegoandres
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="ModeloDAO.DepartamentoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/EstiloAdd.css">
        <title>Agregar</title>
    </head>
    <body>
        
        <jsp:useBean id="cn" class="ModeloDAO.DepartamentoDAO" scope="page"></jsp:useBean>
        <%
            ResultSet rs = cn.mostrardepartamento();
            ResultSet ps = cn.mostrarcargo();
        %>
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
            <p>Departamento</p>
            //
            <select name="txtArea" class="combos">
                <option>Seleccione Departamento</option>
                <%
                    while (rs.next()) {
                %>
                <option type="text" value="<%=rs.getInt("id_departamento")%>"><%=rs.getString("descripcion")%></option>
                <% }
                    rs.close();
                %>
            </select>
            <p>Cargo</p>
            <select name="txtcargo" class="combos">
                <option>Seleccione Cargo</option>
                <%
                    while (ps.next()) {
                %>
                <option type="text" value="<%=ps.getInt("id_cargo")%>"><%=ps.getString("descripcion ")%></option>
                <% }
                    ps.close();
                %>
            </select>
            <p class="center-content">
                <input  type="submit" name="accion" value="Agregar" class="btn btn-green"><br/>
            </p>
        </form>
</body>
</html>
