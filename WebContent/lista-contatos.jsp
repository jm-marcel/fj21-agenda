<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import = "java.util.*, br.com.caelum.jdbc.dao.*, br.com.caelum.jdbc.modelo.*, java.util.List,java.text.SimpleDateFormat" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
	</head>
	<body>
		<table>
			<tr>
				<th>Nome</th>
				<th>E-mail</th>
				<th>Endereço</th>
				<th>Data de Nascimento</th>
			</tr>
				<%
					ContatoDAO dao = new ContatoDAO();
					List<Contato> contatos = dao.getLista();
					SimpleDateFormat dataFormat = new SimpleDateFormat("dd/MM/yyyy");
					for(Contato contato : contatos) {
				%>
					<tr>
						<td><%=contato.getNome() %></td>
						<td><%=contato.getEmail() %></td>
						<td><%=contato.getEndereco() %></td>
						<td><%=dataFormat.format(contato.getDataNascimento().getTime()) %></td>
					</tr>
				<%
				}
				%>
		</table>
	</body>
</html>