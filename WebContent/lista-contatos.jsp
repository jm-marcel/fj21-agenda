<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<%@ page import = "java.util.*, br.com.caelum.jdbc.dao.*, br.com.caelum.jdbc.modelo.*" %>
<html>
	<head>
		<meta charset="ISO-8859-1">
	</head>
	<body>
		<table>
			<%
			ContatoDAO dao = new ContatoDAO();
			List<Contato> contatos = dao.getLista();
			
			for(Contato contato : contatos) {
			%>
				<tr>
					<td><%=contato.getNome() %></td>
					<td><%=contato.getEmail() %></td>
					<td><%=contato.getEndereco() %></td>
					<td><%=contato.getDataNascimento().getTime() %></td>
				</tr>
			<%
			}
			%>
		</table>
	</body>
</html>