<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Resultado de Registro</title>
</head>
<body>
    <h2>Resultado</h2>
    <p>
        ${mensaje != null ? mensaje : 'No se ha recibido ningún mensaje.'}
    </p>
    <a href="usuarioForm.html">Volver al formulario</a>
</body>
</html>
