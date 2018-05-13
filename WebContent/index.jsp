<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">

<!-- Header -->
<c:import url="head.jsp"/>
	
<body>
	<!-- Header -->
	<c:import url="header.jsp"/>
	
			<div id="bannerContent" class="container-fluid">
				<div id="myCarousel" class="carousel slide" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
						<li data-target="#myCarousel" data-slide-to="3"></li>
					</ol>
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<img src="images/livro-compiladores.jpg" class="simuladorImg">
							<div class="carousel-caption">
								<h1>Autômatos, Linguagens Formais e Compiladores</h1>
							</div>
						</div>
						<div class="item">
							<img src="images/documentacao.jpg" class="simulador-img">
							<div class="carousel-caption">
								<h1>Quer conhecer mais sobre o nosso trabalho?</h1>
								<br>
								<a href="documentacao.jsp" class="btn btn-default botao-carousel">De uma olhada na documentação</a>
							</div>
							
						</div>
						<div class="item">
							<img src="images/simulador.png" class="simulador-img contato-img">
							<div class="carousel-caption">
								<h1>Teste códigos em nosso simulador</h1>
								<a href="simulador.jsp" class="btn btn-default botao-carousel">Ir para simulador</a>
							</div>
							
						</div>
						<div class="item">
							<img src="images/contato-3.jpeg" class="simulador-img contato-img">
							<div class="carousel-caption">
								<h1>Entre em contato conosco</h1>
								<a href="contato.jsp" class="botao-carousel btn btn-default">Ir para contatos</a>
							</div>
							
						</div>
					</div>
					

					<a href="#myCarousel" class="left carousel-control" role="button" data-slide="prev">
						<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					</a>
					<a href="#myCarousel" class="right carousel-control" role="button" data-slide="next">
						<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					</a>		
				</div>
		</div>
		
	<div class="container-fluid">
		
		<div class="row group">			
			<div class="col-sm-2 elem elem-two">
				<div class="icon">
					<img class='fernanda' src="images/fernanda.jfif" alt="Fernanda Cosme">
				</div>
				<p class="elem-name">Fernanda Cosme</label>
				<p class="elem-office">Data Analist</label>
			</div>
			<div class="col-sm-2 elem elem-three">
				<div class="icon">
					<img class='igor' src="images/igor.jfif" alt="Igor Deuzami">
				</div>
				<p class="elem-name">Igor Deuzami</label>
				<p class="elem-office">Database Manager</label>
			</div>
			<div class="col-sm-2 elem elem-four">
				<div class="icon">
					<img class='janaina' src="images/janaina.jpg" alt="Janaina Emilia">
				</div>
				<p class="elem-name">Janaina Emilia</label>
				<p class="elem-office">Fullstack Developer</label>
			</div>
			<div class="col-sm-2 elem elem-one">
				<div class="icon">
					<img class='leonardo' src="images/leonardo.jfif" alt="Leonardo de Abreu">
				</div>
				<p class="elem-name">Leonardo de Abreu</label>
				<p class="elem-office">Frontend Developer</label>
				</div>
			<div class="col-sm-2 elem elem-five">
				<div class="icon">
					<img class='thaina' src="images/thaina.jfif" alt="Thaina Mariane">
				</div>
				<p class="elem-name">Thaina Mariane</label>
				<p class="elem-office">Data Analist</label>
			</div>
		</div>
	</div>
	
	<!-- Footer -->
	<c:import url="footer.jsp"/>
</body>
</html>