package controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DestinosDAO;
import model.Destinos;

@WebServlet("/DestinosCreateAndFind")
public class DestinosCreateAndFind extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DestinosCreateAndFind() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String pesquisa = request.getParameter("pesquisa");

		if (pesquisa == null) {
			pesquisa = "";
		}

		List<Destinos> destinos = DestinosDAO.find(pesquisa);

		request.setAttribute("destinos", destinos);
		RequestDispatcher resquesDispatcher = request.getRequestDispatcher("destinos_lista.jsp");
		resquesDispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Destinos destinos = new Destinos();
		destinos.setEstado(request.getParameter("estado"));
		destinos.setCidade(request.getParameter("cidade"));
		destinos.setDescricao(request.getParameter("descricao"));

		DestinosDAO.create(destinos);
		doGet(request, response);
	}

}
