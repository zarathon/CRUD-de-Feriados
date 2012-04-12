package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Feriado;

/**
 * Servlet implementation class AdicionaFeriadoServlet
 */
public class AdicionaFeriadoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdicionaFeriadoServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<Feriado> feriados = (ArrayList<Feriado>) request.getSession().getAttribute("feriados");
		
		if (feriados == null) {
			request.getSession().setAttribute("feriados", new ArrayList());
		}
		
		String nome = request.getParameter("nome");
		String data = request.getParameter("data");
		String tipo = request.getParameter("type");
		
		Feriado f = new Feriado(nome, data, tipo);
		
		feriados.add(f);
		
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		rd.forward(request, response);
		
		
	}

}
