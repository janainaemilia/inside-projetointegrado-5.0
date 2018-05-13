package command;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import service.CompileService;

public class Compilar implements Command {
	@Override
	public void executar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String codigo = request.getParameter("codigo");	
		
		System.out.println(codigo);
		CompileService compileService = new CompileService();
		
		HttpSession session = request.getSession();
		RequestDispatcher view = null;
		
		ArrayList<Object> feedback = compileService.compilar(codigo);

		//session.setAttribute("resultado", feedback);
		//view = request.getRequestDispatcher("simulador.jsp");									
		//view.forward(request, response);
		
	    String json = new Gson().toJson(feedback);

	    response.setContentType("application/json");
	    response.setCharacterEncoding("UTF-8");
	    response.getWriter().write(json);
	}
}