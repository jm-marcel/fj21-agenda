<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
	<html>
		<head>
			<meta charset="ISO-8859-1">
		</head>
		<body>
			<%-- Comentário em JSP aqui: Nossa primeira página JSP --%>
			<% String mensagem = "Bem Vindo ao Sistema de agenda do FJ-21!"; %>
			<% out.println(mensagem); %><br />
			<% String desenvolvido = "Desenvolvido por (JM)"; %>
			<%= desenvolvido %><br />
			<% System.out.println("Tudo foi executado!"); %>
		</body>
	</html>