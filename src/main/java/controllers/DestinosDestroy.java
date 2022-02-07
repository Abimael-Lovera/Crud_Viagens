package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DestinosDAO;

/**
 * Servlet implementation class DestinosDestroy
 */
@WebServlet("/DestinosDestroy")
public class DestinosDestroy extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public DestinosDestroy() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int destinoId = Integer.parseInt(request.getParameter("destinoId"));
		DestinosDAO.delete(destinoId);
		
		DestinosCreateAndFind destinoIdCreateAndFind = new DestinosCreateAndFind();
		destinoIdCreateAndFind.doGet(request, response);
	}

	

}
