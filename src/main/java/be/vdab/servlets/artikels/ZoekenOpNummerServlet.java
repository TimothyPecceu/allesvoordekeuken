package be.vdab.servlets.artikels;

import java.io.IOException;
import java.util.Collections;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import be.vdab.services.ArtikelService;

@WebServlet("/artikels/zoekenopnummer.htm")
public class ZoekenOpNummerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String VIEW = "/WEB-INF/JSP/artikels/zoekenopnummer.jsp";
	private final transient ArtikelService artikelDAO = new ArtikelService();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getQueryString() != null){
			try{
				request.setAttribute("artikel", artikelDAO.read(Long.parseLong(request.getParameter("id"))));
			}catch (NumberFormatException ex){
				request.setAttribute("fouten", Collections.singletonMap("id", "tik een getal"));
			}
		}
		
		request.getRequestDispatcher(VIEW).forward(request, response);
	}

}
