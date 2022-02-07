<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Agencia CRUD - Cadastro Destino | Home</title>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous" />
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="index.html">Destinos</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="index.html#">Destinos</a></li>
					<li class="nav-item"><a class="nav-link"
						href="DestinosCreateAndFind">Lista de Destinos</a></li>
				</ul>
				<form action="DestinosCreateAndFind" method="GET" class="d-flex">
					<input name="pesquisa" class="form-control me-2" type="search"
						placeholder="Pesquisar..." aria-label="Search" />
					<button class="btn btn-outline-success" type="submit">
						Buscar</button>
				</form>
			</div>
		</div>
	</nav>

	<br>

	<div class="container">
		<div class="row">
			<div class="col-md-7">
				<hr>
				<h3>Atualizar Destinos</h3>
				<hr>

				<form action="DestinosUpdate" method="POST">
					<input value="${destino.id}" name="idDestinos" type="number"
						style="visibility: hidden">
					<div class="form-floating mb-3">
						<input name="estado" maxlength="20" type="text"
							class="form-control" id="floatingInput1"
							value="${destino.estado}"> <label>Estado</label>
					</div>
					<div class="form-floating mb-3">
						<input value="${destino.cidade}" name="cidade" maxlength="20"
							type="text" class="form-control"> <label>Cidade</label>
					</div>
					<div class="form-floating mb-3">
						<input value="${destino.descricao}" name="descricao"
							maxlength="500" type="text" class="form-control"> <label>Descrição</label>
					</div>

					<button class="btn btn-success" type="submit">Atualizar
						Destino</button>
					<button class="btn btn-secondary" type="reset">Limpar
						Formulário</button>
				</form>
			</div>
		</div>
	</div>
	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>
