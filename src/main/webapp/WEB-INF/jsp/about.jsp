<%-- 
    Document   : about
    Created on : 22/04/2017, 01:04:09 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">        
        <title>Acerca de</title>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <h1>Acerca de...</h1>
                <p><strong>Desarrollo por: Juan Carlos Corona Rabadán</strong></p>
                <p><strong>Software para la administración de usuarios en el sistema de parroquia.</strong></p>
                <a href="<c:url value="/logeo.htm" />">Seccion Principal</a>
                <h4>Tecnologías utilizadas:</h4>
                <div class="row">                    
                    <ul class="list-unstyled">				
                        <li><img src="<c:url value="/resources/img/java.png" />" width="30" height="30" >
                            <strong>Java JavaEE</strong></li>
                        <li><img src="<c:url value="/resources/img/spring.png" />" width="30" height="30" >
                            <strong>Spring Core, MVC, Security</strong></li>
                        <li><img src="<c:url value="/resources/img/hibernate.png" />" width="30" height="30" >
                            <strong>Hibernate</strong></li>
                        <li><img src="<c:url value="/resources/img/html5.png" />" width="30" height="30" >
                            <img src="<c:url value="/resources/img/css3.png" />" width="30" height="30" >
                            <img src="<c:url value="/resources/img/jscript.png" />" width="30" height="30" >
                            <strong>Html5 CSS3 JavaScript</strong></li>
                        <li><img src="<c:url value="/resources/img/jquery.png" />" width="30" height="30" >
                            <strong>JQuery</strong></li>
                        <li><img src="<c:url value="/resources/img/bootstrap.png" />" width="30" height="30" >
                            <strong>Bootstrap</strong></li>
                        <li><img src="<c:url value="/resources/img/mysql.png" />" width="30" height="30" >
                            <strong>Mysql</strong></li>
                    </ul>
                </div>
                <div class="col-xs-12">
                    <img src="<c:url value="/resources/img/java.png" />" width="20" height="20" >
                    <img src="<c:url value="/resources/img/spring.png" />" width="20" height="20" >
                    <img src="<c:url value="/resources/img/hibernate.png" />" width="20" height="20" >
                    <img src="<c:url value="/resources/img/html5.png" />" width="20" height="20" >
                    <img src="<c:url value="/resources/img/css3.png" />" width="20" height="20" >
                    <img src="<c:url value="/resources/img/jscript.png" />" width="20" height="20" >
                    <img src="<c:url value="/resources/img/jquery.png" />" width="20" height="20" >
                    <img src="<c:url value="/resources/img/bootstrap.png" />" width="20" height="20" >
                    <img src="<c:url value="/resources/img/mysql.png" />" width="20" height="20" >
                </div>                
            </div>
        </div>

        <script src="<c:url value="/resources/js/jquery.js" />"></script>
        <script src="<c:url value="/resources/js/bootstrap.js" />"></script>
    </body>
</html>
