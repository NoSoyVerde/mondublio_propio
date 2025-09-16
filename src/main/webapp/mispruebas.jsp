<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.Date" %>
<%
    request.setAttribute("now", new java.util.Date());
    String[] items = {"Rafa", "Lucía", "Juan", "María"};
    request.setAttribute("nombres", items);
%>
<html>
    <head>
        <title>JSTL Example</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body class="bg-light">
        <div class="container py-5">
            <h2 class="mb-4">Welcome to JSTL Example</h2>
            <p>The current time is <strong><fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH:mm:ss"/></strong></p>
            <h4 class="mt-5">List of names using &lt;c:forEach&gt;:</h4>
            <ul class="list-group w-50">
                <c:forEach var="nombre" items="${nombres}">
                    <li class="list-group-item">${nombre}</li>
                </c:forEach>
            </ul>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>