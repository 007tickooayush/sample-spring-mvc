<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring 4 MVC - HelloWorld Index Page</title>
</head>
<body>

	<!-- use '%!' for declaration purposes, especially for  methods-->
	<%!public String printHeading1(String... textList) {
		String headings = "";

		for (String str : textList) {
			headings += "<h1>" + str + "</h1>";
		}
		return headings;
	}%>

	<center>
		<h2>Hello World</h2>
		<h3>
			<a href="hello?name=Hellsent">Click Here</a>
		</h3>

		<%
		String[] h1s = new String[] { "Hellsent is the author", "Spring is the framework" };
		%>
		<%=printHeading1(h1s)%>
	</center>
</body>
</html>