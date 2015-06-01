<%@page import="gym.modelo.entidad.ContratoCliente"%>
<%@page import="gym.modelo.entidad.ContratoCliente"%>
<%@page import="gym.modelo.dao.impl.PersonaDaoImpl"%>
<%@page import="gym.modelo.dao.PersonaDao"%>
<%@page import="gym.modelo.entidad.TipoContrato"%>
<%@include file="WEB-INF/jspf/top.jspf" %>
 <div class="container well">
 	<div class="row">
            <%
            PersonaDao dao = new PersonaDaoImpl();
            ContratoCliente contratoCliente = new ContratoCliente();
            
         
        %>
 		<div class="col-xs-12"><h2>Registrar cliente</h2></div>
 		<br /><br />

		<form class="form-horizontal">
                    
                        <div class="form-group">
			<label class="col-sm-2 control-label" for="formGroup">DNI</label>
			<div class="col-sm-4">
				<input class="form-control" type="text" id="formGroup" name="buscarDni" placeholder="ingrese dni">
                        <span class="input-group-btn">
                          <button type="submit" class="btn btn-primary">Buscar</button>
                        </span>
			</div>
			</div>
                    <div class="row">
                    <div class="col-md-12">
                   
                    </div>
                </div>     
		</form>
                <br /><br />
                <form  class="form-horizontal" action="" method="post">
                
                <div class="form-group" >
                    <label class="control-label col-xs-4">Tipo contrato</label>
                    <div class="col-xs-6">
                        <select  class="form-control" name=""><option>Selecciona tipo contrato</option> 
                         <%
                        for(TipoContrato tipoContrato: dao.listarTipoContraro()){
                        %>
                        <option value="<%=tipoContrato.getIdTipoContrato()%>"><%=tipoContrato.getNombre()%></option>
                        <%}%>
                        </select>
                    </div>
                </div>
                <div class="form-group">
			<label class="col-sm-2 control-label " for="formGroup" name="montoContrato" placeholder="ingrese monto">Monto Contrato</label>
			<div class="input-group col-sm-3">
				<span class="input-group-addon"><span class="glyphicon glyphicon-usd"></span></span>
				<input class="form-control" type="text" id="formGroup">
			</div>
		</div>
                    <div class="form-group">
			<label class="col-sm-2 control-label " for="formGroup" name="montoContrato" placeholder="ingrese monto">Monto Unitario</label>
			<div class="input-group col-sm-3">
				<span class="input-group-addon"><span class="glyphicon glyphicon-usd"></span></span>
				<input class="form-control" type="text" id="formGroup">
			</div>
		</div>
                
                <div class="form-group">
                    <div class="col-xs-offset-3 col-xs-9">
                        <div class="reg1">
                            <input type="submit" class="btn btn-primary" value="Enviar">
                            <input type="reset" class="btn btn-default" value="Limpiar">
                        </div>               
                    </div>
                    <br><br><br>
                </div>
            </form>
 	</div>

 </div>
   

<%@include file="WEB-INF/jspf/bottom.jspf" %>