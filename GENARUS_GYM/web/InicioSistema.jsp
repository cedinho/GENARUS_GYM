<%@include file="WEB-INF/jspf/top.jspf" %>
<article>
    <div class="container" background="recursos/img/fondo.png">
        <div class="row">
            <div class="col-xs-12 col-sm-7 " >
                <section class="well">
                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1"></li>
                            <li data-target="#myCarousel" data-slide-to="2"></li>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner" role="listbox">
                            <div class="item active">
                                <img src="recursos/img/gym2.jpg" alt="GENARUS GYM">
                            </div>
                            <div class="item">
                                <img src="recursos/img/gym1.jpg" alt="GENARUS GYM">
                            </div>
                            <div class="item">
                                <img src="recursos/img/gym4.jpg" alt="GENARUS GYM">
                            </div>
                        </div>

                        <!-- Left and right controls -->
                        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </section>
                <section class="well">
                    <h4 class="titulo1">Bienvenido al Gimnasio</h4>
                    <p>Desde esta p&aacute;gina web podras realizar todas las gestiones que antes no pod&iacute;as.
                        Si no estas registrado todav&iacute;a, registrate y disfruta de lo servicios que te ofrece la p&aacute;gina</p>
                        <br />
                        <div class="container well " id="sha" class="col-xs-12 col-sm-6">
                        <div class="col-xs-12 col-sm-12">
                            <h3 class=" form-signin-heading"><center><strong>Ingresa Aqui</strong></center></h3>
                        </div>
                        <form class="" action="#">
                            <div class="form-group"><input type="inputUsuario" class="form-control" placeholder="Usuario" name="Usuario" required autofocus></div>
                            <div class="form-group"><input type="inputPassword" class="form-control" placeholder="Contrase&ntilde;a" name="pass" required></div>
                            <button class="btn btn-lg btn-primary btn-block" type="submit"><strong>Iniciar seci&oacute;n</strong></button>

                        </form>
                        <div>
                    </div>
                </section>
            </div>

            <div class="container  col-xs-12 col-sm-offset-1 col-sm-4 well" id="sha" >

                <div class=" form-group">
                    <h3 class="form-signin-heading"><center><strong>Registrate</strong></center></h3>

                </div>
                <form  >
                    <div class=" form-group">
                        <label >Nombre</label><input type="inputNombre" class="form-control" 
                               placeholder="Introduce tu nombre" name="nombre" required autofocus>
                    </div>
                    <div class=" form-group">
                         <label>Apellido</label><input type="inputApellido" class="form-control" placeholder="Apellido" name="Apellido" required>
                    </div>
                    <div class=" form-group">
                        <label >DNI</label><input type="inputDNI" class="form-control" placeholder="DNI" name="DNI" required>
                    </div>
                    <div class=" form-group">
                        <label >Contrase&ntilde;a</label><input type="password" class="form-control" placeholder="Contrase&ntilde;a" name="Contrase&ntilde;a" required>
                    </div>
                    <div class="  form-group">
                        <label >Escribe de nuevo la contrase&ntilde;a</label> <input type="password" class="form-control" placeholder="Contrase&ntilde;a" name="Contrase&ntilde;a" required>
                    </div>
                    <div class=" form-group">
                        <center><button type="submit" class="btn btn-primary "><strong>Enviar</strong></button></center>
                    </div>

                </form>
            </div>
        </div>
    </div>

</article>


<%@include file="WEB-INF/jspf/bottom.jspf" %>
