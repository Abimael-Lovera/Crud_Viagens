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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
	integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" type="text/css" href="global.css">
</head>
<body>
	<nav
		class="navbar bg-light fixed-top navbar-expand-lg navbar-light p-md-3"
		id="navbar">
		<div class="container">
			<a class="navbar-brand nav_logo" to="/home"> <img
				src="lovera+.png" alt="logo-lovera" />
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarNav">
				<div class="mx-auto"></div>
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link nav_links"
						href="Index.html"> <i class="fa-solid fa-plane-departure"></i>
							Destinos
					</a></li>
					<li class="nav-item"><a class="nav-link nav_links"
						href="DestinosCreateAndFind"> <i
							class="fa-solid fa-plane-departure"></i> Lista Destinos
					</a></li>
					<li class="nav-item"><a class="nav-link nav_links"
						to="/promocoes"> <i class="fa-solid fa-briefcase"></i>
							Promoções
					</a></li>
					<li class="nav-item"><a class="nav-link nav_links"
						to="/contato"> <i class="fa-solid fa-address-book"></i>
							Contato
					</a></li>
					<form action="DestinosCreateAndFind" method="GET" class="d-flex">
						<input name="pesquisa" class="form-control me-2" type="search"
							placeholder="Pesquisar..." aria-label="Search">
						<button class="btn btn-outline-success" type="submit">Buscar</button>
					</form>
				</ul>
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
	<footer class="footer">
		<section class="footer_container container">
			<div class="footer_content">
				<div class="footer_data">
					<h3 class="footer_title">Lovera</h3>
					<p class="footer_description">
						Travel you choose the <br /> destination, we offer you the <br />
						experience.
					</p>
					<div class="footer_social">
						<a href="https://www.facebook.com/" target="_blank"
							class="footer_social-media" rel="noreferrer"> <i
							class="fa-brands fa-facebook-square"></i>
						</a> <a href="https://twitter.com/" target="_blank"
							class="footer_social-media" rel="noreferrer"> <i
							class="fa-brands fa-twitter"></i>
						</a> <a href="https://www.instagram.com/" target="_blank"
							class="footer_social-media" rel="noreferrer"> <i
							class="fa-brands fa-instagram"></i>
						</a> <a href="https://www.youtube.com/" target="_blank"
							class="footer_social-media" rel="noreferrer"> <i
							class="fa-brands fa-youtube"></i>
						</a>
					</div>
				</div>
				<div class="footer_data">
					<h3 class="footer_subtitle">About</h3>
					<ul>
						<li class="footer_item"><a href="#!" class="footer_link">About
								Us</a></li>
						<li class="footer_item"><a href="#!" class="footer_link">Features</a>
						</li>
						<li class="footer_item"><a href="#!" class="footer_link">New
								& Blog</a></li>
					</ul>
				</div>
				<div class="footer_data">
					<h3 class="footer_subtitle">Company</h3>
					<ul>
						<li class="footer_item"><a href="#!" class="footer_link">Team</a>
						</li>
						<li class="footer_item"><a href="#!" class="footer_link">Plan
								y Pricing</a></li>
						<li class="footer_item"><a href="#!" class="footer_link">Become
								a member</a></li>
					</ul>
				</div>
				<div class="footer_data">
					<h3 class="footer_subtitle">Support</h3>
					<ul>
						<li class="footer_item"><a href="#!" class="footer_link">FAQs</a>
						</li>
						<li class="footer_item"><a href="#!" class="footer_link">Support
								Center</a></li>
						<li class="footer_item"><a href="#!" class="footer_link">Contact
								Us</a></li>
					</ul>
				</div>
			</div>
			<div class="footer_rights">
				<p class="footer__copy">&#169; 2021 Abimael Lovera.</p>
				<div class="footer__terms">
					<a href="#!" class="footer__terms-link">Termos & Condições</a> <a
						href="#!" class="footer__terms-link"> Política de Privacidade</a>
				</div>
			</div>
		</section>
	</footer>
	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>
