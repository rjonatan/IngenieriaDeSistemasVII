<%-- 
    Document   : pprincipal
    Created on : 28-mar-2013, 22:44:27
    Author     : MAGWI
--%>
<%@include file="../conexion.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    consulta = "select name, dni from persona ;";
    ps = conex.prepareStatement(consulta);
    rs = ps.executeQuery();
%>
<html>
    <head>
        <title>MagwI</title>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,600,700" rel="stylesheet" />
        <script src="js/jquery-1.8.3.min.js"></script>
        <script src="css/5grid/init.js?use=mobile,desktop,1000px"></script>
        <script src="js/init.js"></script>
        <noscript>
        <link rel="stylesheet" href="css/5grid/core.css" />
        <link rel="stylesheet" href="css/5grid/core-desktop.css" />
        <link rel="stylesheet" href="css/5grid/core-1200px.css" />
        <link rel="stylesheet" href="css/5grid/core-noscript.css" />
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/style-desktop.css" />
        </noscript>
        <!--[if lte IE 9]><link rel="stylesheet" href="css/ie9.css" /><![endif]-->
        <!--[if lte IE 8]><link rel="stylesheet" href="css/ie8.css" /><![endif]-->
        <!--[if lte IE 7]><link rel="stylesheet" href="css/ie7.css" /><![endif]-->
    </head>
    <body>

        <!-- Nav -->
        <nav id="nav">
            <ul>
                <li><a href="#top">Home</a></li>
                <li><a href="#contact">Registrar</a></li>
                <li><a href="#portfolio">Ubicación</a></li>
            </ul>
        </nav>

        <!-- Home -->
        <div class="wrapper wrapper-style1 wrapper-first">
            <article class="5grid-layout" id="top">
                <div class="row">
                    <div class="4u">
                        <span class="image"><img src="images/web.png" alt="" /></span>
                    </div>
                    <div class="8u">
                        <center>
                            
                            <header>
                            <h2><strong>IV SEMINARIO DE LA TENDENCIA</strong></h2>
                            <h2><strong>DE DESARROLLO DE SOFTWARE</strong></h2>
                        </header>
                        <%-- <p>Y este soy yo <strong>Tan Galante</strong>, y estoy libre. </p>
                                --%>
                                <br/>
                                <br/>
                                <br/>
                        <a href="#contact" class="button button-big">Registrate</a>
                        </center>
                    </div>
                </div>
            </article>
        </div>

        <!-- Work -->

        <!-- Contact -->
        <div class="wrapper wrapper-style4">
            <article id="contact">
                <header>
                    <h2>Registrate</h2>
                    <%-- <span>...</span> --%>
                </header>
                <form action="../FormSave.jsp" method="post">
                    <div class="5grid">
                        <div class="row">
                            <div class="12u">
                                <form method="post" action="#">
                                    <div class="5grid">
                                        <div class="row">
                                            <div class="6u">
                                                <input type="text" name="name" id="name" placeholder="Apellidos y Nombres" onChange="javascript:this.value=this.value.toUpperCase();"/>
                                            </div>
                                        </div>
                                            <div class="row">
                                            <div class="6u">
                                                <input type="text" name="dni" id="dni" placeholder="Dni" maxlength="8"/>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="6u">
                                                <input type="text" name="email" id="email" placeholder="Email" />
                                            </div>
                                        </div>
                                            
                                            <div class="row">
                                            <div class="6u">
                                                <textarea type="text" name="comentario" id="comentario" rows="2" cols="5" maxlength="190" placeholder="Comentario"></textarea>
                                            </div>    
                                        </div>
                                        <div class="row">
                                            <div class="12u">
                                                <input type="submit" class="button" value="Registrar" />
                                                <input type="reset" class="button button-alt" value="Cancel" />
                                            </div>
                                        </div>
                                    </div>
                                    <input type="hidden" name="accion" value="guardar">
                                </form>
                                <br/>
                                <br/>
                                <br/>
                                <br/>
                                <br/>
                                <br/>
                                <br/>
                            </div>
                        </div>
                    </div>
                </form>

            </article>
        </div>

        <!-- Portfolio -->
        <center>
        <div class="wrapper wrapper-style3">
            <article id="portfolio">
                <header>
                    <h2>Dirección</h2>
                    <%-- <span>.......</span> --%>
                </header>
                <div class="5grid-layout">
                    <div class="row">
                        <div class="12u">
                        </div>
                    </div>
                    <div class="row">
                        <div class="4u">
                            <article class="box box-style2">
                                <%--
                                texto
                                --%>
                                <p>
                                    
Fecha: 4 de Junio<br/>
Hora  : 9 am<br/>
Lugar: Teatrin Paraninfo - UPeU
            Carretera salida arequipa 
            Km. 6 Chullunquiani - Juliaca
                                </p>
                            </article>
                                
                        </div>
                                <div class="4u">
                            <iframe width="625" height="550" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com.pe/maps/ms?msa=0&amp;msid=201208650378120476994.0004dd7efce262b0f911b&amp;hl=es&amp;ie=UTF8&amp;ll=-15.51493,-70.18179&amp;spn=0,0&amp;t=m&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com.pe/maps/ms?msa=0&amp;msid=201208650378120476994.0004dd7efce262b0f911b&amp;hl=es&amp;ie=UTF8&amp;ll=-15.51493,-70.18179&amp;spn=0,0&amp;t=m&amp;source=embed" style="color:#0000FF;text-align:left"></a></small>
                                
                        </div>


                    </div>

                </div>
        </div>
    
        <footer>
            <p id="copyright">
                &copy; 2013 Miniport | MagwI
            </p>
        </footer>
    </center>
        
        
    </article>
</div>






</body>
</html>
