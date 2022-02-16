<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Accueil</title>
</head>
<body>
<h1>Emploi du temps</h1>

<c:url value="/emploi-du-temps" var="lien_emploi_du_temps"/>
<a href="${lien_emploi_du_temps}">
    <button>Afficher l'emploi du temps</button>
</a>

</body>
</html>