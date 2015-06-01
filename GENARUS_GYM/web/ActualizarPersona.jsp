<%@page import="gym.modelo.entidad.Persona"%>
<%@page import="gym.modelo.dao.impl.PersonaDaoImpl"%>
<%@page import="gym.modelo.dao.PersonaDao"%>
<%@include file="WEB-INF/jspf/top.jspf" %>
        
     <div class="container">
         <%
                 
            String opcion = request.getParameter("opcion");opcion = opcion == null ? "" : opcion;
            String id_persona = request.getParameter("id_persona");id_persona = id_persona == null ? "" : id_persona;
            String mensaje= "";
       
            /*String nombre = request.getParameter("nombre"); nombre = nombre==null?"":nombre;
            String apellidos = request.getParameter("apellidos"); apellidos = apellidos==null?"":apellidos;
            String dni = request.getParameter("dni"); dni = dni==null?"":dni;
            String sexo = request.getParameter("sexo"); sexo = sexo==null?"":sexo;
            String telefono = request.getParameter("telefono"); telefono = telefono==null?"":telefono;
            String direccion = request.getParameter("direccion"); direccion = direccion==null?"":direccion;*/
            PersonaDao dao = new PersonaDaoImpl();
                    Persona persona= new Persona();
            if (opcion.equals("2")) {
                    
                    
                  persona =  dao.buscarId(id_persona);
              //seteado de los obtenidos del formulario
            /*persona.setIdPersona(id_persona);
            persona.setNombre(nombre);
            persona.setApellidos(apellidos);
            persona.setDni(dni);
            persona.setSexo(sexo);
            persona.setTelefono(telefono);
            persona.setDireccion(direccion);*/
            
            //Envio del bean Cliente hacia el metodo agregar Cliente del DAO
            //clienteDao.agregarCliente(clien);
            if(dao.actualizarPersona(persona)){
                out.println("InicioSistema.jsp");
            }else{
                 mensaje = "No se pudo registrar al Asistente";
            
                    }
            }
        %>
        
        <div class="row">      
           
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
                    <%=mensaje%>
                </div>
               
                <div class="col-sm-5 "> 
                     <form class="form-horizontal" action="ListarPersona.jsp">
                
                <div class="form-group">           
                    <div class="input-group">
                        <input type="text" class="form-control col-sm-6" placeholder="B&uacute;squeda por DNI" name="buscarDni">
                        <span class="input-group-btn">
                          <button type="submit" class="btn btn-primary">Buscar</button>
                        </span>
                    </div><!-- /input-group -->
                </div>
                <div class="row">
                    <div class="col-md-12" id="aler">
                        <br>
                        <%
                            if(!mensaje.equals("")){
                        %>
                        <div class="alert alert-danger"><%=mensaje%></div> 
                        <%}%>
                    </div>
                </div>      
            </form> 
                </br>
                 </br>
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
                              <input type="password" class="form-control" name="contraseÃ±a" placeholder="Contrase&ntilde;a" required>
                            </div>
                          </div>
                          <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-6">
                              <center><button type="submit" class="btn btn-primary brn-block">Modificar Usuario</button></center>
                            </div>
                          </div>
                        </form>
                    
                </div>
               
          </div>
    
    </div>

     
<%@include file="WEB-INF/jspf/bottom.jspf" %>
