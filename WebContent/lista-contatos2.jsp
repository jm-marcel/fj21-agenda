<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
	</head>
	<body>
		<!-- Cria o DAO -->
		<jsp:useBean id="dao" class="br.com.caelum.jdbc.dao.ContatoDAO"></jsp:useBean>
		<table border="1">
			<!-- Percorre contatos montando as linhas da tabela -->
			<c:forEach var="contato" items="${dao.lista}" varStatus="id">
				<tr bgcolor="#${id.count % 2 == 0 ? 'aaee88' : 'ffffff' }">
					<td>Nome: </td>
					<td>${contato.nome}</td>
					<td>Email: </td>
					<!--<c:if test="${not empty contato.email}">
						<a href="mailto:${contato.email}">${contato.email}</a>
					</c:if>-->
					<td>
					<c:choose>
						<c:when test="${not empty contato.email}">
							<a href="mailto:${contato.email}">${contato.email}</a>
						</c:when>
						<c:otherwise>
							E-mail não informado!
						</c:otherwise>
					</c:choose>
					</td>
					<td>Endereço: </td>
                    <td>${contato.endereco}</td>
                    <td>Data: </td>
                	<td>${contato.dataNascimento.time}</td>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>