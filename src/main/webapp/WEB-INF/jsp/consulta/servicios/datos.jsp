<%-- 
    Document   : datos
    Created on : 18/02/2016, 12:42:35 PM
    Author     : CARLOS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/WEB-INF/jsp/include/header.jsp" %>
<%@include file="/WEB-INF/jsp/include/datetime.jsp" %>


<div id="mantenimiento" class="container">
    <h1>Consulta Servicios</h1>
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
                                    <a data-toggle="modal" regId="${s.idservicio}" class="glyphicon glyphicon-search view"></a>                                    
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
                <h4 class="modal-title" id="exampleModalLabel"><span class="glyphicon glyphicon-search"></span>&nbsp; Ver Servicio</h4>
            </div>
            <div id="dialog-content-servicio" class="modal-body">

                <form class="form-horizontal">

                    <div class="form-group">
                        <label for="nombre" class="control-label col-xs-4">Nombre:</label>
                        <div class="col-xs-6">
                            <input type="text" id="nombre" name="nombre" class="form-control" readonly/>
                        </div> 
                    </div>


                    <div class="form-group">
                        <label for="descripcion" class="control-label col-xs-4">Descripción:</label>
                        <div class="col-xs-6">
                            <input id="descripcion" type="text" name="descripcion" class="form-control" readonly/>
                        </div>                        
                    </div>

                    <div class="form-group">
                        <label for="monto" class="control-label col-xs-4">Monto:</label>
                        <div class="col-xs-6">
                            <input id="monto" type="text" name="monto" class="form-control" readonly/>
                        </div>                        
                    </div>

                    <div class="form-group">
                        <label for="idestado" class="control-label col-xs-4">Estado:</label>
                        <div class="col-xs-6 center-block">
                            <input id="idestado" type="text" name="idestado" class="form-control" readonly/>
                        </div>
                    </div>
            </div>

            </form>


            <div class="modal-footer">                
                <a href="#" data-dismiss="modal" class="btn btn-primary">Cerrar</a>
            </div>
        </div>
    </div>
</div>





<%@include file="/WEB-INF/jsp/include/footer.jsp" %>
<script>
    var path = '${cp}/consulta/servicios/';
    var paginacion = {
        page: ${paginado.page},
        size: ${paginado.size},
        search: '${paginado.search}',
        totalPage: ${paginado.totalPage}
    };
</script>
<script src="${cp}/resources/js/consulta/servicio.js"></script>
