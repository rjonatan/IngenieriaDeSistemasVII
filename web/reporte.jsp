<%@page contentType="text/html"%>
<%@page pageEncoding="ISO-8859-1"%>
<%@include file="conexion.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<%
    String nombre = request.getParameter("nombre") == null ? "" : request.getParameter("nombre");
    String stylo = "display:normal";
    String UsuarioNombre=(String) request.getSession().getAttribute("userName");
    String UsuarioId=(String) request.getSession().getAttribute("userId");
    request.getSession().setAttribute("Id",UsuarioId);
%>

<%
    consulta = "SELECT p.idper, p.name, p.nroticket, p.monto, p.dni, p.codigo,  p.asistencia, p.entregado,  e.name AS responsable "
             + " FROM persona p INNER JOIN encargado e ON e.idenc = p.idenc  "
            + " where p.name like ('%" + nombre + "%') order by p.idper desc ";
    ps = conex.prepareStatement(consulta);
    rs = ps.executeQuery();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>JSP Page</title>
        <link href="assets/css/bootstrap.css" rel="stylesheet">
        
  
        <style type="text/css">
            body {
                padding-top: 60px;
                padding-bottom: 40px;
            }
            .sidebar-nav {
                padding: 9px 0;
            }

            @media (max-width: 980px) {
                /* Enable use of floated navbar text */
                .navbar-text.pull-right {
                    float: none;
                    padding-left: 5px;
                    padding-right: 5px;
                }
            }
        </style>
        <link href="assets/css/bootstrap-responsive.css" rel="stylesheet">
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script src="http://www.formmail-maker.com/var/demo/jquery-popup-form/jquery.colorbox-min.js"></script>

		<script>
			$(document).ready(function(){
				$("#nuevofm").colorbox({iframe:true, fastIframe:false, width:"450px", height:"480px", transition:"fade", scrolling   : false});
			});
		</script>
                
    </head>
    
    
    <body>
   <input type="hidden" name="idencwww" value="<%=UsuarioId%>" /> 
        <div class="navbar">
            <div class="navbar-inner" align="center">
                <h3>IV SEMINARIO DE LA TENDENCIA DE DESARROLLO DE SOFTWARE</h3>
                <div align="right">
                    <h5>USUARIO: <%=UsuarioNombre%>:<%=UsuarioId%></h5>
                </div>
            </div>
        </div>
        
      

        <div class="container-fluid">
            <div class="row-fluid">
                
                <div class="span2">
                <br/>
                <br/>
                <br/>
                    <a href="frmNuevo.jsp"  class="btn btn-large btn-block btn-primary btn btn-info" >Nuevo</li>           
                    <a href="#" class="btn btn-large btn-block btn-primary btn btn-info">Reporte Inscritos</a>
                    <a href="#" class="btn btn-large btn-block btn-primary btn btn-info">Recaudacion En moneda</a>                    
                </div>
                <div class="span10">
                    <div align="right">
                        <form class="bs-docs-example form-search" name="formBuscar" action="reporte.jsp">
                            <div class="input-append">
                                BUSCAR :
                                <input type="text" class="search-query" id="nombre" name="nombre" value="" size="200" /> 
                                <input type="submit" class="btn" value="Buscar" name="buscar" />
                            </div>
                        </form>
                        <%-- aqui boots  --%>
                        <center>
                            <div class="container">
                                <div class="tab-pane fade active in" id="profile">
                                    <div class="bs-docs-example">
                                        <table class="table table-hover">
                                            <thead>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>NOMBRE</th>
                                                    <th>N� TICKET</th>
                                                    <th>MONTO</th>
                                                    <th>DNI</th>
                                                    <th>CODIGO</th>
                                                    <th>ASISTENCIA</th>
                                                    <th>CERTIFICADO</th>
                                                    <th>RESPONSABLE</th>
                                                    <th>OPCIONES</th>
                                                </tr>
                                            </thead>
                                            <tbody>

                                                <% while (rs.next()) {%>
                                                <tr>
                                                    <td><%=rs.getString("idper")%></td>
                                                    <td><%=rs.getString("name")%></td>
                                                    <td><%=rs.getString("nroticket")%></td>
                                                    <td><%=rs.getString("monto")%></td>
                                                    <td><%=rs.getString("dni")%></td>
                                                    <td><%=rs.getString("codigo")%></td>
                                                    <td><%=rs.getString("asistencia")%></td>
                                                    <td><%=rs.getString("entregado")%></td>
                                                    <td><%=rs.getString("responsable")%></td>
                                                    <td>
                                                        <a class="icon-trash" href="FormSave.jsp?accion=eliminar&idper=<%=rs.getString("idper") %>" onclick="return confirm('�Estas seguro de ELIMINAR?');"></a>&nbsp;
                                                        <a class="icon-edit" href="frmEdit.jsp?accion=actualizar&idper=<%=rs.getString("idper") %>" title="Editar"></a>&nbsp;
                                                        <a class="icon-print" href="jasper/certificado.jsp?idper=<%=rs.getString("idper")%>" title="PRINT"></a>&nbsp;
                                                    </td>
                                                </tr>
                                                <%}%>
    
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </center>
                        <%-- aqui boots  --%>
                        <br/>
                    </div>
                </div>
            </div>
        </div>


        <br>

    </body>
</html>
