<%@page import="gym.modelo.entidad.Usuario"%>
<%@page import="gym.modelo.dao.impl.UsuarioDaoImpl"%>
<%@page import="gym.modelo.dao.UsuarioDao"%>
<%@include file="WEB-INF/jspf/top.jspf" %>
      
<%
    String usuario=request.getParameter("usuario");usuario = usuario==null?"":usuario;
    String password=request.getParameter("password");password = password==null?"":password;
    String mensaje="";
    
    if(!usuario.equals("") && !password.equals("")){ 
        UsuarioDao ud=new UsuarioDaoImpl();
        Usuario u= ud.validarUsuario(usuario, password);
    
        if(u!=null){
            response.sendRedirect("InicioSistema.jsp");
        }else{

         mensaje="Usuario o password incorrecto";

        }
    }
            
%>
     
    <article>
        <div class="container">
            <div class="container well" id="sha">
               <div class="col-md-12">
                 <h2 class=" form-signin-heading"><center><strong>Ingresa Aqu&iacute;</strong></center></h2>
               </div>
                <form class="" action="inicio.do" method="post">
                 <div class="form-group"><input type="Usuario" class="form-control" placeholder="Usuario" name="usuario" required autofocus></div>
                 <div class="form-group"><input type="password" class="form-control" placeholder="Contrase&ntilde;a" name="password" required></div>
                 <button class="btn btn-lg btn-primary btn-block" type="submit"><strong>Iniciar seci&oacute;n</strong></button>
               </form>                            
             </div>
            
        </div>
        <%=mensaje%>
    </article>  
<%@include file="WEB-INF/jspf/bottom.jspf" %>