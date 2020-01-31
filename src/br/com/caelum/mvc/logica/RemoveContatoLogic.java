package br.com.caelum.mvc.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.jdbc.dao.ContatoDAO;
import br.com.caelum.jdbc.modelo.Contato;

public class RemoveContatoLogic implements Logica {
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		long id = Long.parseLong(request.getParameter("id"));
		
		Contato contato = new Contato();
		contato.setId(id);
		
		ContatoDAO dao = new ContatoDAO();
		dao.remove(contato);
		
		System.out.println("Excluindo Contato...");
		
		return "mvc?logica=ListaContatosLogic";
	}
}
