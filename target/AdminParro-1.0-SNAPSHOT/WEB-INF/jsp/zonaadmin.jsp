<%-- 
    Document   : zonaadmin
    Created on : 8/03/2017, 08:44:33 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
        <title>Adminstracion</title>
    </head>
    <body>

        <div class="container">
            <div class="row">
                <h2>Bienvenido Admin</h2>
                <a href="j_spring_security_logout">Salir</a>
                <input type="hidden" id="path" value="${pageContext.request.contextPath}" />
                <table border="1" class="tabadmin">
                    <thead>
                    <th>Nombre</th>
                    <th>Usuario</th>
                    <th>Password</th>
                    <th>Lugar</th>
                    <th>Descripción</th>
                    </thead>
                    <tbody>
                        <tr>
                            <td><c:out value="${admin.nombre}" /></td>
                            <td><c:out value="${admin.usuario}" /></td>
                            <td><c:out value="${admin.passw}" /></td>
                            <td><c:out value="${admin.CLugar}" /></td>
                            <td><c:out value="${admin.descrip}" /></td>                
                        </tr>
                    </tbody>
                </table>

                <!--Salvar un nuevo usuario-->
                <p>
                <div id='msjNuevoUser'><p>Ingresa nombre y passw</p></div>
                <sf:form action="${pageContext.request.contextPath}/zonaadmin/save.htm" method="post" commandName="usuario">
                    <table border="1" class="tabnvousr">
                        <thead>
                        <th>Nombre</th>
                        <th>Password</th>
                        <th>Descripcion</th>
                        </thead>
                        <tbody>
                            <tr>
                                <td><sf:input path="nombre" type="text" /> </td>
                                <td><sf:input path="passw" type="text" /> </td>
                                <td><sf:input path="descripcion" type="text" /> </td>
                                <td><input type="submit" value="Guardar" /> </td>
                            </tr>
                        </tbody>            
                    </table>
                </sf:form>
                <p>
                <!--Mostrar usuarios-->
                <table border="1" class="tabusers">
                    <thead>
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>Password</th>
                    <th>Descripción</th>
                    </thead>
                    <tbody>
                        <c:forEach items="${usuarios}" var="usuario">
                            <tr>
                                <td><c:out value="${usuario.idUsuarios}"></c:out></td>
                                <td><c:out value="${usuario.nombre}"></c:out></td>
                                <td><c:out value="${usuario.passw}"></c:out></td>
                                <td><c:out value="${usuario.descripcion}"></c:out></td>
                                <td><a class="confirmdel" href='<c:url value="/zonaadmin/${usuario.idUsuarios}/delete.htm" />' >Eliminar</a></td>
                                <td><a href='#' class="btnactuali" >Actualizar</a></td>
                                <td><a href='#' class="btncancel" >Cancelar</a></td>
                                <td><a class="btnmodifi" href='#' >Guardar</a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                
            </div>
        </div>


        <script src="<c:url value="/resources/js/jquery.js" />"></script>
        <script src="<c:url value="/resources/js/bootstrap.js" />"></script>
        <script src="<c:url value="/resources/js/zonaadmin.js" />"></script>

    </body>
</html>
