<%-- 
    Document   : header
    Created on : 11/02/2016, 08:27:37 AM
    Author     : CARLOS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:set var="cp" scope="application" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>.:SBPP:.</title>
        <link rel="stylesheet" href="${cp}/resources/css/bootstrap.min.css">
        <link rel="stylesheet" href="${cp}/resources/css/bootstrap-datepicker3.min.css">
        <link rel="stylesheet" href="${cp}/resources/css/bootstrap-timepicker.min.css">
        <link rel="stylesheet" href="${cp}/resources/css/main.css">
    </head>
    <body>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <div>
                        <a href="${cp}/index.html"><img style="float: left;display: inline; border: 2px solid black;border-radius: 25px;" src="${cp}/resources/img/logo_inicio.jpeg"/></a>
                        <a class="navbar-brand" href="${cp}/index.html" style="display: inline; float: right; position: relative;">&nbsp;SBPP</a>                    
                    </div>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> Mantenimiento <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="${cp}/mantenimiento/clientes/index.html">Clientes</a></li>
                                <li><a href="${cp}/mantenimiento/contratos/index.html">Contratos</a></li>
                                <li><a href="${cp}/mantenimiento/servicios/index.html">Servicios</a></li>                                                              
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Procesos<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="${cp}/proceso/cliente/nuevo.html">Registrar Cliente</a></li>
                                <li><a href="${cp}/proceso/contrato/nuevo.html">Registrar Contrato</a></li>
                                <li><a href="${cp}/proceso/servicio/nuevo.html">Registrar Servicio</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="${cp}/proceso/pago/nuevo.html">Registrar Pago</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> Consultas <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="${cp}/consulta/clientes/ver.html">Clientes</a></li>
                                <li><a href="${cp}/procesos/programarviaje/index.html">Contratos</a></li>
                                <li><a href="${cp}/consulta/servicios/ver.html">Servicios</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="${cp}/procesos/programarviaje/index.html">Estado de Cuenta</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="${cp}/procesos/programarviaje/index.html">Pagos</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> Reportes <span class="caret"></span></a>
                            <ul class="dropdown-menu">                                
                                <li><a href="${cp}/procesos/programarviaje/index.html">Clientes</a></li>                                
                                <li><a href="${cp}/procesos/programarviaje/index.html">Contratos</a></li>
                                <li><a href="${cp}/procesos/programarviaje/index.html">Pagos</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="${cp}/procesos/programarviaje/index.html">Pagos del día</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Ayuda<span class="caret"></span></a>
                            <ul class="dropdown-menu">                                                                
                                <li><a href="${cp}/procesos/programarviaje/index.html">Manual de uso</a></li>
                            </ul>
                        </li>                       
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <!--   <li>                                    
                               <embed src=http://flash-clocks.com/free-flash-clocks-blog-topics/free-flash-clock-174-2.swf width=200 height=45 wmode=transparent type=application/x-shockwave-flash></embed> 
                          </li>
                        -->                                                                            
                        <li><a href="${cp}/logout">Salir <span class="glyphicon glyphicon-log-out" /></a></li>                      
                    </ul>                                        

                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>

