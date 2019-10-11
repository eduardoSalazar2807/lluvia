<%-- 
    Document   : Registrar
    Created on : 10-10-2019, 20:08:12
    Author     : Eduardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Registro</title>
        <link rel="stylesheet" href="../css/cssRegistro.css">
    </head>
    <body>
        <div class="contenido">    
            <div class="titulo-form">
                <img src="../imagenes/Logo.png" alt="Logo de empresa LLuvia">
                <h1>Empresa<span>LLuvia</span></h1>
            </div>
            <div class="contenido-form">
                <form action="CONTROLA" method="POST" class="form-cod">
                    <div class="titulo-form">
                        <h3>Registro</h3>
                    </div>
                    <div class="grupo-input">
                        <input type="number" class="input-form" name="txtusuarios" required="">
                        <label>Ingrese su Rut</label>
                    </div>
                    
                    <div class="grupo-input">
                        <input type="number" class="input-form" name="txtusuarios" required="">
                        <label>Ingrese Contraseña</label>
                    </div>

                    <div class="grupo-input">
                        <input type="number" class="input-form" name="txtusuarios" required="">
                        <label>Repetir Contraseña</label>
                    </div>
                </form>  
            </div>
        </div>
    </body>
</html>
