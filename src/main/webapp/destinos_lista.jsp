<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de Destinos</title>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="Index.html">Destinos</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="Index.html">Destinos</a></li>
					<li class="nav-item"><a class="nav-link"
						href="DestinosCreateAndFind">Lista de Destinos</a></li>
				</ul>
				<form action="DestinosCreateAndFind" method="GET" class="d-flex">
					<input name="pesquisa" class="form-control me-2" type="search"
						placeholder="Pesquisar..." aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Buscar</button>
				</form>
			</div>
		</div>
	</nav>

	<br>

	<div class="container">
		<div class="row">
			<div class="cold-md-7">
				<hr>
				<h3>Destinos Cadastrados</h3>
				<hr>
				<table class="table">
					<thead>
						<tr>
							<th>#</th>
							<th>Estado</th>
							<th>Cidade</th>
							<th>Descrição</th>

						</tr>
					</thead>
					<tbody>
						<c:forEach items="${destinos}" var="destino">
							<tr>

								<td>${destino.id}</td>
								<td>${destino.estado}</td>
								<td>${destino.cidade}</td>
								<td>${destino.descricao}</td>

								<td><a href="DestinosDestroy?destinoId=${destino.id}">deletar</a>
									| <a href="DestinosUpdate?destinoId=${destino.id}">atualizar</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<br>
				<h5>
					<a href="Index.html">Voltar para o Cadastro de Destinos</a>
				</h5>

			</div>
		</div>
	</div>

	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous">
		
	</script>
</body>
</html>