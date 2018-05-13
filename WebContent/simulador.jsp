<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">

<!-- Header -->
<c:import url="head.jsp"/>
	
<body>
    <!-- Header -->
	<c:import url="header.jsp"/>
	
	<div class="container-fluid simulador">
		<h6 class = "group-name-simulador">Vamos compilar um código?</h6>
		<div class="row">			
			<div class='col-sm-6'>
				<div class='sugestoes'>
					<label class='label-sugestoes'>Sugestões</label>
					<button type="button" class="btn btn-if-else btn-suggestion" data-suggestion='ifElse'>If/Else</button>
					<button type="button" class="btn btn-switch btn-suggestion" data-suggestion='switchCase'>Switch/Case</button>
					<button type="button" class="btn btn-for btn-suggestion" data-suggestion='for'>For</button>
					<button type="button" class="btn btn-while btn-suggestion" data-suggestion='while'>While</button>
					<button type="button" class="btn btn-do btn-suggestion" data-suggestion='do'>Do</button>
				</div>					
				<div class='console'>
					<div class="form-group">						
						<textarea class="form-control lined" name="codigo" rows="5" id="txtCodigo">Start to code...</textarea>
						<input  type="button" name="command" value="Compilar" class="btn btn-go"/>
						<input  type="button" name="command" value="Limpar" class="btn btn-clean"/>
					</div>
				</div>				
			</div>
			<div class='col-sm-6'>
				<div class='simulador_feedback'>
					<p class="txt-title-com"> Análise Léxica</p>
					<div class='tokens'></div>									
				</div>
				<div class='simulador_feedback analise_sintatica'>
					<p class="txt-title-com"> Análise Sintática</p>
				</div>
				
				<div class="modal fade bd-example-modal-sm" id="successModal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
				  <div class="modal-dialog modal-sm">
				    <div class="modal-content">
				     <div class="modal-header">
				        <h4 class="modal-title">Feedback</h4>
				      </div>
				      
				      <div class="modal-body">
				      	<div class="alert alert-success" role="alert">
							<p class='feedback'></p>
						</div>					      	
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
				      </div>
				    </div>
				  </div>
				</div>
				
				<div class="modal fade bd-example-modal-sm" id="errorModal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
				  <div class="modal-dialog modal-sm">
				    <div class="modal-content">
				     <div class="modal-header">
				        <h4 class="modal-title">Feedback</h4>
				      </div>
				      
				      <div class="modal-body">
				      	<div class="alert alert-danger" role="alert">
							<p class='feedback'></p>
						</div>					      	
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
				      </div>
				    </div>
				  </div>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer -->
	<c:import url="footer.jsp"/>
</body>
</html>