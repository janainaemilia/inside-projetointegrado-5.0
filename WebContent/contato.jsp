<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">

<!-- Header -->
<c:import url="head.jsp"/>
	
<body>
	
	<!-- Header -->
	<c:import url="header.jsp"/>
	
	<div class="container-fluid">		
		<div class="row contato">			
			<h3>Contato</h3>
			<p>Entre em contato conosco para tirar dúvidas, fazer críticas, elogios, trocar conhecimento.</p>
			<div class='social col-lg-3 col-md-3 col-sm-3 col-xs-3'>
				<a href='mailto:teaam.inside@gmail.com' title='Mande-nos um e-mai'><img alt="Mande-nos um e-mail" src="images/mail.png"></a>
				<a target="_blank" href='https://github.com/janainaemilia/inside-projetointegrado-5.0/' title='Nosso projeto no github'><img alt="Nosso projeto no github" src="images/github.svg"></a>
			</div>
		</div>
	</div>
	
	<!-- Footer -->
	<c:import url="footer.jsp"/>
</body>
</html>