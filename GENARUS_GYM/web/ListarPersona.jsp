<%@page import="gym.modelo.dao.PersonaDao"%>
<%@page import="gym.modelo.dao.impl.PersonaDaoImpl"%>
<%@page import="gym.modelo.entidad.Persona"%>
<%@include file="WEB-INF/jspf/top.jspf" %>

        <div class="container-fluid well">
    <div class="col-md-1"></div>

<div class="col-md-10">
    
    <%
        Persona per = new Persona();
        
        String buscarDni = request.getParameter("buscarDni"); buscarDni= buscarDni==null?"":buscarDni;
        String idPersona = "";
        String mensaje = "";
        
        if(!buscarDni.equals("")){
            PersonaDao dao= new PersonaDaoImpl();
            
           per = dao.buscarPersona(buscarDni);
           if(per != null){
           idPersona = per.getIdPersona();
           
           }else{
              mensaje = "La persona no existe Registrar <a href='RegistrarPersona.jsp'>Aqui</a>";
           
           }
           
        
        }
    
    
    
    %>
    <form action="ListarPersona.jsp" method="post" size="10">
    <table>
        <tr>
            <td>DNI:</td>
            <td><input type="text" name="buscarDni" placeholder="Ingeres Dni"></td>
            <td><input type="submit" value="Buscar"></td>
  
        </tr>
        <tr>
            <td colspan="3"><%=mensaje%></td>
        </tr>
 
    </table>
        </form>
    
        <div class="table-responsive">
   
        <table class="table table-striped well">
                     
            <thead>
      
                
                   <%
            String opcion = request.getParameter("opcion");opcion = opcion == null ? "" : opcion;
            String id_persona = request.getParameter("id_persona");id_persona = id_persona == null ? "" : id_persona;
            
                   

            if (opcion.equals("1")) {
                PersonaDao dao = new PersonaDaoImpl();
         //elimino un registro de la base de datos
                //clienteDao.eliminarCliente(Integer.parseInt(id));
                if (dao.eliminarPersona(id_persona)) {
                    out.println("Se elimino Saticfatoriamente");

                } else {
                    out.println("Ocurrio un error al eliminar ");
                }
            }
            
            
        %>
                <tr>
                  <th width="5%">#</th>
                  <th width="25%">Nombre </th>
                  <th width="35%">Apellidos</th>
                  <th width="15%">DNI</th>
                  <th width="8%">Sexo</th>
                  <th width="8%">Telefono</th>
                  <th width="8%">Direcci&oacute;n</th>
                  <th width="7%">Accion</th>
                  
                </tr>
              </thead>
              <tbody>
                <%  
             
                int count = 0;
                PersonaDao dao = new PersonaDaoImpl();
                
                
                for(Persona persona: dao.listarPersona()){
                 count++;   
                
                //evento.getIdEvento();
                 
                
            %>
            
      
            <tr>
                <td><%=count%>.-</td>
                <td><%=persona.getNombre()%></td>
                <td><%=persona.getApellidos()%></td>
                <td><%=persona.getDni()%></td>
                <td><%=persona.getSexo()%></td>
                <td><%=persona.getTelefono()%></td>
                <td><%=persona.getDireccion()%></td>
                <td align="center"><a href="ListarPersona.jsp?id_persona=<%=persona.getIdPersona()%>&opcion=1"><input type="submit" name="eliminar" class="btn btn-primary" value="Eliminar"></a></td>
                <td align="center"><a href="ActualizarPersona.jsp?id_persona=<%=persona.getIdPersona()%>&opcion=2"><input type="submit" name="actualizar" class="btn btn-primary" value="Actualizar"></a></td>
                </tr>
            <%}%>
            </tbody>    
           
        </table>
        </div>
    </div>
    <div class="col-md-1"></div>
    
</div>
        <%@include file="WEB-INF/jspf/bottom.jspf" %>