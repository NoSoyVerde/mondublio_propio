<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
        <!DOCTYPE html>
        <html lang="en">

        <body>
            <h2>Welcome to JSTL Example!</h2>
            <!-- Mostrar la hora actual con fmt:formatDate -->
            <p>The current time is:
                <fmt:formatDate value="<%= new java.util.Date() %>" pattern="HH:mm:ss" />
            </p>

       <p>Lista: ${lista}</p>
            <c:forEach var="item" items="${lista}">
                <p>${item}</p>
            </c:forEach>

        </body>

        </html>