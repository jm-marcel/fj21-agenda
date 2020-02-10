package br.com.caelum.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import java.text.ParseException;
import java.text.SimpleDateFormat;

import java.util.Calendar;
import java.util.Date;
// import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.corba.se.pept.transport.Connection;

import br.com.caelum.jdbc.ConnectionFactory;
import br.com.caelum.jdbc.dao.ContatoDAO;
import br.com.caelum.jdbc.modelo.Contato;

@WebServlet("/adicionaContato")
public class AdicionaContatoServlet extends HttpServlet {
	
	public void init(ServletConfig config) throws ServletException{
		super.init(config);
		log("Iniciando a Servlet");
	}
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		// busca o Writer
		PrintWriter out = response.getWriter();
		
		// buscando parâmetros no request
		String nome = request.getParameter("nome");
		String endereco = request.getParameter("endereco");
        String email = request.getParameter("email");
        String dataEmTexto = request.getParameter("dataNascimento");
        Calendar dataNascimento = null;

        // fazendo a conversão da data
        try {
            Date date = new SimpleDateFormat("dd/MM/yyyy").parse(dataEmTexto);
            dataNascimento = Calendar.getInstance();
            dataNascimento.setTime(date);
        } catch (ParseException e) {
            out.println("Erro de conversão da data");
            return; //para a execução do método
        }
        
        // monta um objeto contato
        Contato contato = new Contato();
        contato.setNome(nome);
        contato.setEndereco(endereco);
        contato.setEmail(email);
        contato.setDataNascimento(dataNascimento);
        
        // busca a conexão pendurada na requisição
     	Connection connection = (Connection) request.getAttribute("conexao");
        
        // salva o contato
        ContatoDAO dao = new ContatoDAO();
        dao.adiciona(contato);
        
        connection.close();
        
        // imprime o nome do contato que foi adicionado
        RequestDispatcher rd = request.getRequestDispatcher("/contato-adicionado.jsp");
        rd.forward(request, response);
	}
	
	public void destroy() {
		super.destroy();
		log("Destruindo a Servlet");
	}
}
