<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<title>Lista de Contatos</title>
	</head>
	<body>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
		<c:import url="cabecalho.jsp" />
		<!-- Cria o DAO -->
		<jsp:useBean id="dao" class="br.com.caelum.jdbc.dao.ContatoDAO"></jsp:useBean>
		<table border="1">
			<tr>
				<th>Nome</th>
				<th>E-Mail</th>
				<th>Endereço</th>
				<th>Data de Nascimento</th>
			</tr>
			<!-- Percorre contatos montando as linhas da tabela -->
			<c:forEach var="contato" items="${dao.lista}" varStatus="id">
				<tr bgcolor="#${id.count % 2 == 0 ? 'aaee88' : 'ffffff' }">
					<td>${contato.nome}</td>
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
                    <td>${contato.endereco}</td>
                	<!--<td>${contato.dataNascimento.time}</td>-->
                	<td>
                	<fmt:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy"/>
                	</td>
				</tr>
			</c:forEach>
		</table>
		<c:import url="rodape.jsp" />
	</body>
</html>