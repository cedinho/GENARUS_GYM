<%-- 
    Document   : DatosPersonales
    Created on : 25/05/2015, 03:50:30 PM
    Author     : chasse2
--%>
<%@include file="WEB-INF/jspf/top.jspf" %>
              
        <div class="container">

            <div class="row well" >
                 <jsp:useBean id="user" scope="session" class="java.lang.String" />
        <%
           // HttpSession session1 = request.getSession();
           // String usuario = (String)session1.getAttribute("user");
        
            out.println("Usuario en Session: "+user);
        %>
                <section>
                <div class="col-sm-offset-1 col-sm-5  ">
                    <form class="form-horizontal" method="post">
                              <div class="form-group">
                                <label for="inputNombre" class="col-sm-2 control-label">Nombre</label>
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" name="nombre" placeholder="Nombre" required>
                                </div>
                              </div>
                               <div class="form-group">
                                <label for="inputApellidos" class="col-sm-2 control-label">Apellidos</label>
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" name="apellidos" placeholder="Apellidos">
                                </div>
                              </div>
                               <div class="form-group">
                                <label for="inputDni" class="col-sm-2 control-label">Dni</label>
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" name="dni" placeholder="Dni">
                                </div>
                              </div>
                               <div class="form-group">
                                <label  class="col-sm-2 control-label">Sexo</label>
                                        <label class="radio-inline">
                                          <input type="radio" name="sexo"  value="M"> Masculino
                                        </label>
                                        <label class="radio-inline">
                                          <input type="radio" name="sexo"  value="F"> Femenino
                                        </label>
                              </div>
                               <div class="form-group">
                                <label for="inputTelefono" class="col-sm-2 control-label">Telefono</label>
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" name="telefono" placeholder="Telefono">
                                </div>
                              </div>
                              <div class="form-group">
                                <label for="inputDirecci&oacute;n" class="col-sm-2 control-label">Direccion</label>
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" name="direccion" placeholder="Direcci&oacute;n">
                                </div>
                              </div>
                              <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-6">
                                  <center><button type="submit" class="btn btn-primary btn-block">Modificar Datos</button></center>
                                </div>
                              </div>
                            </form>

                </div>
                </section>
                <section >  
                <div class="col-sm-5 "> 
                </br>
                    <form class="form-horizontal">
                          <div class="form-group">
                            <label for="inputUsuario" class="col-sm-3 control-label">Usuario</label>
                            <div class="col-sm-6">
                              <input type="usuario" class="form-control" name="usuario" placeholder="Usuario" required>
                            </div>
                          </div>
                          <div class="form-group">
                            <label for="inputPassword3" class="col-sm-3 control-label">Contrase&ntilde;a</label>
                            <div class="col-sm-6">
                              <input type="password" class="form-control" name="contraseña" placeholder="Contrase&ntilde;a" required>
                            </div>
                          </div>
                          <div class="form-group">
                            <label for="inputPassword3" class="col-sm-3 control-label">Contrase&ntilde;a</label>
                            <div class="col-sm-6">
                              <input type="password" class="form-control" name="contraseña1" placeholder="Contrase&ntilde;a" required>
                            </div>
                          </div>
                          <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-6">
                              <center><button type="submit" class="btn btn-primary brn-block">Modificar Usuario</button></center>
                            </div>
                          </div>
                        </form>
                    
                </div>
                 </section> 
            </div>
        </div>
       
  <%@include file="WEB-INF/jspf/bottom.jspf" %>