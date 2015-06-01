<%@page import="gym.modelo.entidad.Persona"%>
<%@page import="gym.modelo.dao.impl.PersonaDaoImpl"%>
<%@page import="gym.modelo.dao.PersonaDao"%>
<%@include file="WEB-INF/jspf/top.jspf" %>
    
       
              
            
               
          
          
   <div class="container">   
         <%
                 PersonaDao dao = new PersonaDaoImpl();
                 Persona persona = new Persona();
           
            
             String nombre = request.getParameter("nombre"); nombre= nombre==null?"":nombre;
             String apellidos = request.getParameter("apellidos"); apellidos= apellidos==null?"":apellidos;
             String dni=request.getParameter("dni");dni = dni==null?"":dni;
             String sexo = request.getParameter("sexo"); sexo= sexo==null?"":sexo;
             String telefono = request.getParameter("telefono"); telefono= telefono==null?"":telefono;
             String direccion = request.getParameter("direccion"); direccion= direccion==null?"":direccion;
             String mensaje = "";
             
             if( !nombre.equals("") && !apellidos.equals("") && !dni.equals("") && !telefono.equals("") && !direccion.equals("")){
             
                 
                 persona.setNombre(nombre);
                 persona.setApellidos(apellidos);
                 persona.setDni(dni);
                 persona.setSexo(sexo);
                 persona.setTelefono(telefono);
                 persona.setDireccion(direccion);

                 if(dao.agregarPersona(persona)){
                     response.sendRedirect("RegistrarPersona.jsp");
                 }else{
                     mensaje = "No se pudo registrar al Asistente";
                 }
             }
             
             
        
        %>
   <div class="row">      
    
            <div class="col-md-12 well">
                <div >
                    <h2>Formulario de Registro</h2>
                </div>
                <br>
                
                <form action="RegistrarPersona.jsp" methodo="POST">
    
            <table>
                
                <tr>
                    <td>Nombre:</td>
                    <td><input type="text" name="nombre" value="" placeholder="Ingrese nombre"></td>
                </tr>
                <tr>
                    <td>Apellidos:</td>
                    <td><input type="text" name="apellidos" value="" placeholder="Ingrese apellidos"></td>
                </tr>
                <tr>
                    <td>DNI:</td>
                    <td><input type="text" name="dni" value="" placeholder="Ingrese DNI" required=""></td>
                </tr>
                <tr>
                    <td>Sexo:</td>
                    <td>
                        <select name="sexo">
                            <option value="M">Masculino</option>
                            <option value="F">Femenino</option>
                        </select>
                    </td>
                </tr>
                 <tr>
                    <td>Telefono:</td>
                    <td><input type="text" name="telefono" value="" placeholder="Ingrese telefono" required=""></td>
                </tr>
                 <tr>
                    <td>Direccion:</td>
                    <td><input type="text" name="direccion" value="" placeholder="Ingrese direccion" ></td>
                </tr>
                <tr>
                    <td colspan="2"><%=mensaje%></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Guardar">
                    </td>
                </tr>
                
            </table>
        </form>


                      
            </div>  
    
    </div>
   
</div>
    <%@include file="WEB-INF/jspf/bottom.jspf" %>  
