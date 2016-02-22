<%-- 
    Document   : index
    Created on : 14/02/2016, 02:33:38 PM
    Author     : CARLOS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/WEB-INF/jsp/include/header.jsp" %>
<%@include file="/WEB-INF/jsp/include/datetime.jsp" %>


<div id="mantenimiento" class="container">
    <h1>Mantenimiento Servicios</h1>
    <hr />
    <div class="row">

        <div class="col-md-offset-1 col-md-9">
            <form id="form-filtrar">
                <div class="input-group">
                    <input id="search" type="text" class="form-control" placeholder="Ingrese Nombre del Servicio para filtrar búsqueda." value="${paginado.search}">
                    <span class="input-group-btn">
                        <button class="btn btn-info"><span class="glyphicon glyphicon-search"></span></button>
                    </span>
                </div>
            </form>
            <div class="table-responsive">
                <table class="table table-bordered table-hover">
                    <thead>
                        <tr class="info">
                            <th>Nombre</th>                            
                            <th>Descripcion</th>
                            <th>Monto</th>
                            <th>Estado</th>
                            <th>Op(Id)</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="s" items="${paginado.items}">          
                            <tr>
                                <td>${s.nombre}</td>                               
                                <td>${s.descripcion}</td>
                                <td>${s.monto}</td>
                                <td>${s.activo}</td>
                                <td class="text-center pointer">
                                    <a data-toggle="modal" regId="${s.idservicio}" class="glyphicon glyphicon-edit edited"></a>                                    
                                    <span regId="${s.idservicio}" class="glyphicon glyphicon-remove deleted"></span>
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
                <h4 class="modal-title" id="exampleModalLabel"><span class="glyphicon glyphicon-edit"></span>&nbsp; Editar Servicio</h4>
            </div>
            <div id="dialog-content-servicio" class="modal-body">

                <form class="form-horizontal">

                    <div class="form-group">
                        <label for="nombre" class="control-label col-xs-2">Nombre:</label>
                        <div class="col-xs-5">
                            <input type="text" id="nombre" name="nombre" class="form-control" autofocus required/>
                        </div> 
                    </div>


                    <div class="form-group">
                        <label for="descripcion" class="control-label col-xs-2">Descripción:</label>
                        <div class="col-xs-8">
                            <input id="descripcion" type="text" name="descripcion" class="form-control" autofocus required/>
                        </div>                        
                    </div>

                    <div class="form-group">
                        <label for="monto" class="control-label col-xs-2">Monto:</label>
                        <div class="col-xs-5">
                            <input id="monto" type="text" name="monto" class="form-control" autofocus required/>
                        </div>                        
                    </div>

                    <div class="form-group">
                        <label for="idestado" class="control-label col-xs-2">Estado:</label>
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
    var path = '${cp}/mantenimiento/servicios/';
    var paginacion = {
        page: ${paginado.page},
        size: ${paginado.size},
        search: '${paginado.search}',
        totalPage: ${paginado.totalPage}
    };
</script>
<script src="${cp}/resources/js/mantenimiento/servicio.js"></script>
