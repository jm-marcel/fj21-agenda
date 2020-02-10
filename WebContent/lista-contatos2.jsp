<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<title>Lista de Contatos</title>
	</head>
	<body>
		<c:import url="cabecalho.jsp"></c:import>
		<!-- Cria o DAO -->
		<!--<jsp:useBean id="dao" class="br.com.caelum.jdbc.dao.ContatoDAO"></jsp:useBean>-->
		<table border="1">
			<tr>
				<th>Nome</th>
				<th>E-Mail</th>
				<th>Endereço</th>
				<th>Data de Nascimento</th>
				<th>Remover Contato</th>
			</tr>
			<!--Percorre contatos montando as linhas da tabela-->
			<!--<c:forEach var="contato" items="${dao.lista}" varStatus="id">-->
			<c:forEach var="contato" items="${contatos}" varStatus="id">
				<tr bgcolor="#${id.count % 2 == 0 ? 'aaee88' : 'ffffff' }">
					<td>${contato.nome}</td>
					<td>
						<!--<c:if test="${not empty contato.email}">
						<a href="mailto:${contato.email}">${contato.email}</a>
						</c:if>-->
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
					<td>
						<a href="mvc?logica=RemoveContatoLogic&id=${contato.id}">Remover Contato</a>
					</td>
				</tr>
			</c:forEach>
		</table>
		<c:import url="rodape.jsp"></c:import>
	</body>
</html>