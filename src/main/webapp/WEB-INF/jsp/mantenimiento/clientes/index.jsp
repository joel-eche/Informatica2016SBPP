<%-- 
    Document   : index
    Created on : 14/02/2016, 02:33:38 PM
    Author     : CARLOS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/WEB-INF/jsp/include/header.jsp" %>
<%@include file="/WEB-INF/jsp/include/datetime.jsp" %>


<div id="mantenimiento" class="container">
    <h1>Mantenimiento Clientes</h1>
    <hr />
    <div class="row">

        <div class="col-md-offset-1 col-md-9">
            <form id="form-filtrar">
                <div class="input-group">
                    <input id="search" type="text" class="form-control" placeholder="Ingrese Nro. DNI para filtrar búsqueda." value="${paginado.search}">
                    <span class="input-group-btn">
                        <button class="btn btn-info"><span class="glyphicon glyphicon-search"></span></button>
                    </span>
                </div>
            </form>
            <div class="table-responsive">
                <table class="table table-bordered table-hover">
                    <thead>
                        <tr class="info">
                            <th>DNI</th>                            
                            <th>Nombres</th>
                            <th>Apellidos</th>
                            <th>Sexo</th>
                            <th>Dirección</th>
                            <th>Fech-Nac</th>                            
                            <th>Estado</th>
                            <th>Op(Id)</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="c" items="${paginado.items}">    
                            <tr>
                                <td>${c.dni}</td>                               
                                <td>${c.nombres}</td>
                                <td>${c.apellidos}</td>
                                <td>${c.sexo}</td>
                                <td>${c.direccion}</td>
                                <td>${c.fecha}</td>
                                <td>${c.estado}</td>
                                <td class="text-center pointer">
                                    <a data-toggle="modal" regId="${c.dni}" class="glyphicon glyphicon-edit edited"></a>                                    
                                    <span regId="${c.dni}" class="glyphicon glyphicon-remove deleted"></span>
                                </td>
                            </tr>
                        </c:forEach> 
                    </tbody>
                </table>
                <div class="text-center">
                    <nav>
                        <ul class="pager">
                            <li>
                                <a id="inicio" href="javascript:void(0);">
                                    <span class="glyphicon glyphicon-fast-backward"></span>
                                </a>
                            </li>
                            <li>
                                <a id="anterior" href="javascript:void(0);">
                                    <span class="glyphicon glyphicon-backward"></span>
                                </a>
                            </li>
                            <li>
                                <span class="page-text">&nbsp; ${paginado.page} / ${paginado.totalPage} páginas &nbsp;</span>
                            </li>
                            <li>
                                <a id="siguiente" href="javascript:void(0);">
                                    <span class="glyphicon glyphicon-forward"></span>
                                </a>
                            </li>
                            <li>
                                <a id="fin" href="javascript:void(0);">
                                    <span class="glyphicon glyphicon-fast-forward"></span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>                          

<div id="example" class="modal fade" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="exampleModalLabel"><span class="glyphicon glyphicon-edit"></span>&nbsp; Editar Cliente</h4>
            </div>
            <div id="dialog-content-servicio" class="modal-body">

                <form class="form-horizontal">

                    <div class="form-group">
                        <label for="dni" class="control-label col-xs-4">DNI:</label>
                        <div class="col-xs-6">
                            <input type="text" id="dni" name="dni" class="form-control" readonly autofocus required/>
                        </div> 
                    </div>

                    <div class="form-group">
                        <label for="nombres" class="control-label col-xs-4">Nombres:</label>
                        <div class="col-xs-6">
                            <input type="text" id="nombres" name="nombres" class="form-control" autofocus required/>
                        </div> 
                    </div>

                    <div class="form-group">
                        <label for="apellidos" class="control-label col-xs-4">Apellidos:</label>
                        <div class="col-xs-6">
                            <input type="text" id="apellidos" name="apellidos" class="form-control" autofocus required/>
                        </div> 
                    </div>                   

                    <div class="form-group">
                        <label for="idsexo" class="control-label col-xs-4">Sexo:</label>
                        <div class="col-xs-4 center-block">
                            <SELECT NAME="idsexo" id="idsexo" class="col-sm-12">
                                <OPTION VALUE=0 class="form-control">Masculino</OPTION>
                                <OPTION VALUE=1 class="form-control">Femenino</OPTION>                                            
                            </SELECT>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="direccion" class="control-label col-xs-4">Dirección:</label>
                        <div class="col-xs-6">
                            <input id="direccion" type="text" name="direccion" class="form-control" autofocus required/>
                        </div>                        
                    </div>

                    <div class="form-group">
                        <label for="fchnac" class="control-label col-xs-4">Fech-Nac:</label>
                        <div class="col-xs-6">
                            <input type="text" id="fchnac" name="fchnac" class="form-control datepicker" autofocus required/>
                        </div> 
                    </div>


                    <div class="form-group">
                        <label for="idestado" class="control-label col-xs-4">Estado:</label>
                        <div class="col-xs-4 center-block">
                            <SELECT NAME="idestado" id="idestado" class="col-sm-12">
                                <OPTION VALUE=0 class="form-control">Activo</OPTION>
                                <OPTION VALUE=1 class="form-control">Inactivo</OPTION>                                            
                            </SELECT>
                        </div>
                    </div>
            </div>

            </form>


            <div class="modal-footer">
                <a href="index.html" class="btn btn-success">Guardar</a>
                <a href="#" data-dismiss="modal" class="btn">Cerrar</a>
            </div>
        </div>
    </div>
</div>





<%@include file="/WEB-INF/jsp/include/footer.jsp" %>
<script>
    var path = '${cp}/mantenimiento/clientes/';
    var paginacion = {
        page: ${paginado.page},
        size: ${paginado.size},
        search: '${paginado.search}',
        totalPage: ${paginado.totalPage}
    };
</script>
<script src="${cp}/resources/js/mantenimiento/persona.js"></script>
