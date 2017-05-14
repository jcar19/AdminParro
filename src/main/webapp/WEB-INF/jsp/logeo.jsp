<%-- 
    Document   : logeo
    Created on : 7/03/2017, 07:07:04 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">      
        <title>Logeo</title>
    </head>
    <body>

        <div class="container">
            <div class="row">
                <h1>Logeate!</h1>

                <form class="form-horizontal" name="form" action="j_spring_security_check" method="post">

                    <div class="form-group">
                        <label class="control-label col-sm-1" for="usuario">Usuario</label>
                        <div class="col-sm-10">
                            <input type="text" name="usuario" class="form-control" id="ejemplo_email_1"
                                   placeholder="User" maxlength="12">
                        </div>

                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-1" for="password">Contraseña</label>
                        <div class="col-sm-10">
                            <input type="password" name="passw" class="form-control" id="ejemplo_password_1"
                                   placeholder="Contraseña" maxlength="12">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-1 col-sm-10">
                            <button type="submit" class="btn btn-default">Accesar</button>
                        </div>
                    </div>            
                </form>

                <c:if test="${param.error != null}" >
                    <div class="row">
                        <span class="alert alert-danger" role="alert">
                            <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                            <span class="sr-only">Error:</span>
                            Error en las credenciales
                        </span>
                    </div>
                </c:if>
                <div class="col-xs-12">
                    <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                    <!--                    <label>Usuario: userA23</label>
                                        <label>Contraseña: pass23t</label>-->
                    <p>Usuario: userA23</p>
                    <p>Contraseña: pass23t</p>
                </div>

                <a href="<c:url value="/about.htm" />">Acerca de</a>

            </div>
        </div>




        <script src="<c:url value="/resources/js/jquery.js" />"></script>
        <script src="<c:url value="/resources/js/bootstrap.js" />"></script>

    </body>
</html>
