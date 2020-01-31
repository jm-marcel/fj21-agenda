<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
	</head>
	<body>
		<c:import url="cabecalho.jsp" />
		<h1>Altera Contato</h1>
			<hr />
			<form action="mvc" method="post">
            	<caelum:campoTexto rotulo="Nome:" id="nome" /><br />
				<caelum:campoTexto rotulo="E-mail:" id="email" /><br />
				<caelum:campoTexto rotulo="Endereco:" id="endereco" /><br />
				<caelum:campoData rotulo="Data de Nascimento:" id="dataNascimento" /><br />
				<input type="submit" value="Gravar" />
			</form>
		<c:import url="rodape.jsp" />
	</body>
</html>