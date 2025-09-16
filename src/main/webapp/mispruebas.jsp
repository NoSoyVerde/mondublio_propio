<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JSTL Date Example</title>
</head>
<body>
    <h2>Welcome to JSTL Example!</h2>
    <p>The current time is: 
        <fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH:mm:ss" />
    </p>
</body>
</html>
