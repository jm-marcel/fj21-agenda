package br.com.caelum.mvc.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PrimeiraLogica implements Logica {
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("Executando a L�gica...");
		System.out.println("\nRetornando o nome da p�gina JSP...");
		return "primeira-logica.jsp";
	}
}
