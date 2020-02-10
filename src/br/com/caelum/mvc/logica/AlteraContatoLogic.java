package br.com.caelum.mvc.logica;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.jdbc.dao.ContatoDAO;
import br.com.caelum.jdbc.modelo.Contato;

public class AlteraContatoLogic implements Logica{
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		long id = Long.parseLong(request.getParameter("id"));
		
		Contato contato = new Contato();
		contato.setId(id);
		contato.setNome(request.getParameter("nome"));
		contato.setEndereco(request.getParameter("endereco"));
		contato.setEmail(request.getParameter("email"));
		
		// fazendo a conversão da data
		String dataEmTexto = request.getParameter("dataNascimento");
		Date date = new SimpleDateFormat("dd/MM/yyyy").parse(dataEmTexto);
		Calendar dataNascimento = Calendar.getInstance();
		dataNascimento.setTime(date);
		
		contato.setDataNascimento(dataNascimento);
		
		ContatoDAO dao = new ContatoDAO();
		dao.altera(contato);
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/lista-contatos2.jsp");
		rd.forward(request, response);
		
		System.out.println("Alterando o contato " + contato.getNome());
		
		return "mvc?logica=ListaContatosLogic";
	}
}
