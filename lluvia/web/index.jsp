<%-- 
    Document   : index
    Created on : 10-10-2019, 17:47:02
    Author     : Eduardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Login</title>
        <link rel="stylesheet" href="css/newcss.css">
    </head>
    <body>
        <div class="cod-container">
            <div class="form-header">
                <img src="imagenes/Logo.png" alt="Logo de empresa LLuvia">
                <h1>Empresa<span>LLuvia</span></h1>
            </div>

            <div class="form-content">
                <form action="CONTROLA" method="POST" class="cod-form">
                    <div class="form-title">
                        <h3>Iniciar Sesión</h3>
                    </div>

                    <div class="input-group">
                        <input type="number" class="form-input" name="txtusuario" id="correo" required="">
                        <label  for="correo">Ingrese Rut</label>
                    </div>

                    <div class="input-group" >
                        <input type="password" class="form-input" name="txtcontra" id="pass" required="">
                        <label  for="correo">Contraseña</label>
                    </div>

                    <div class="input-group">
                        <input type="submit" class="form-input" name="btniniciar" value="Iniciar Sesión">
                          <a href="CONTROLA?accion=MosEmpleados">Empleado</a>
                          
                          <a href="CONTROLA?accion=MostrarDepartamento">Departamento</a>
                    </div>

                </form>
            </div>
        </div>
        <%

            HttpSession sesion = request.getSession();
            int nivel = 0;
            if (request.getAttribute("nivel") != null) {
                nivel = (Integer) request.getAttribute("nivel");
                if (nivel == 1) {
                    sesion.setAttribute("nombre", request.getAttribute("nombre"));
                    sesion.setAttribute("nivel", nivel);
                    response.sendRedirect("Admin/admin.jsp");
                }
            }

            if (request.getParameter("cerrar") != null) {
                session.invalidate();
            }

        %>
    </body>
</html>
