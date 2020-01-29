package br.com.caelum.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "servletOiMundo", 
			urlPatterns = {"/oi", "/ola"},
			initParams = {
		    @WebInitParam(name = "param1", value = "value1"),
		    @WebInitParam(name = "param2", value = "value2")}
		    )
public class OiMundo extends HttpServlet {
	
	public void init(ServletConfig config) throws ServletException{
		super.init(config);
		log("Iniciando a Servlet");
	}
	
	public void destroy() {
		super.destroy();
		log("Destruindo a Servlet");
	}
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// super.service(request, response);
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		out.println("<h2>Exemplo com InitParam Servlet");
		
		ServletConfig config = getServletConfig();
		
		String parametro1 = config.getInitParameter("param1");
		out.println("Valor do parâmetro 1: " + parametro1);
		
		String parametro2 = config.getInitParameter("param2");
        out.println("<br>Valor do parâmetro 1: " + parametro2);
		
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Primeira Servlet</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h1>Oi mundo Servlet!</h1>");
        out.println("</body>");
        out.println("</html>");
        
        out.close();
	}
	
//	private String parametro1;
//  private String parametro2;
//	
//	public void init(ServletConfig config) throws ServletException {
//		super.init(config);
//		this.parametro1 = config.getInitParameter("param1");
//		this.parametro2 = config.getInitParameter("param2");
//	}
}
