<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Spring Web MVC project</title>
        <spring:url value="/resources/css/main.css" var="MainCss" />
        <link href="${MainCss}" rel="stylesheet" />
        <link href="<c:url value="/resources/css/second.css" />" rel="stylesheet">
        <!--<script src="<c:url value="/resources/js/main.js" />"></script>-->
    </head>

    <body>
        <h1>Hoola</h1>
        <h2>Bienvenido</h2>
        <p>Hello! This is the default welcome page for a Spring Web MVC project.</p>
        <p><i>To display a different welcome page for this project, modify</i>
            <tt>index.jsp</tt> <i>, or create your own welcome page then change
                the redirection in</i> <tt>redirect.jsp</tt> <i>to point to the new
                welcome page and also update the welcome-file setting in</i>
            <tt>web.xml</tt>.</p>
        <a href="/AdminParro/zonaadmin.htm">Ingresar</a>
    </body>
</html>
