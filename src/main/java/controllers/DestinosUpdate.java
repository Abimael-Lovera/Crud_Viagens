package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DestinosDAO;
import model.Destinos;

@WebServlet("/DestinosUpdate")
public class DestinosUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DestinosUpdate() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int destinosId = Integer.parseInt(request.getParameter("destinoId"));
		Destinos destinos = DestinosDAO.findByPk(destinosId);

		request.setAttribute("destino", destinos);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("formUpdateDestino.jsp");
		requestDispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// doGet(request, response);
		Destinos destinos = new Destinos();

		destinos.setId(Integer.parseInt(request.getParameter("idDestinos")));
		destinos.setEstado(request.getParameter("estado"));
		destinos.setCidade(request.getParameter("cidade"));
		destinos.setDescricao(request.getParameter("descricao"));
		
		

		DestinosDAO.update(destinos);

		//DestinosCreateAndFind destinoCreateAndFind = new DestinosCreateAndFind();
		//destinoCreateAndFind.doGet(request, response);
		
		DestinosCreateAndFind destinoIdCreateAndFind = new DestinosCreateAndFind();
		destinoIdCreateAndFind.doGet(request, response);
	}

}
