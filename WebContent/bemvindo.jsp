<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
	<html>
		<head>
			<meta charset="ISO-8859-1">
		</head>
		<body>
			<%-- Coment�rio em JSP aqui: Nossa primeira p�gina JSP --%>
			<% String mensagem = "Bem Vindo ao Sistema de agenda do FJ-21!"; %>
			<% out.println(mensagem); %><br />
			<% String desenvolvido = "Desenvolvido por (JM)"; %>
			<%= desenvolvido %><br />
			<% System.out.println("Tudo foi executado!"); %>
		</body>
	</html>