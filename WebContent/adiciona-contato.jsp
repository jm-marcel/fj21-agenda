<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    	<link href="css/jquery.css" rel="stylesheet">
        <script src="js/jquery.js"></script>
        <script src="js/jquery-ui.js"></script>
    </head>
	<body>
		<c:import url="cabecalho.jsp" />
		<%@taglib tagdir="/WEB-INF/tags" prefix="caelum" %>
		<h1>Adiciona Contatos</h1>
			<hr />
			<form action="adicionaContato" method="post">
            	<caelum:campoTexto rotulo="Nome:" id="nome" /><br />
				<caelum:campoTexto rotulo="E-mail:" id="email" /><br />
				<caelum:campoTexto rotulo="Endereco:" id="endereco" /><br />
				<caelum:campoData rotulo="Data de Nascimento:" id="dataNascimento" /><br />
				<input type="submit" value="Gravar" />
			</form>
		<c:import url="rodape.jsp" />	
	</body>
</html>