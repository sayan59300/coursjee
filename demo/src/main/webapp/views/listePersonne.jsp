<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Liste des personnes</title>
</head>
<body>
<h1>Liste des personnes</h1>
<c:forEach items="${personnes}" var="personne">
    <div>
        <form action="/personne/modifier" method="post">
            <input type="hidden" value="<c:out value="${personne.id}"/>">
            <c:out value="${personne.nom}"/>
            <c:out value="${personne.prenom}"/>
            <input type="submit" value="Modifier">
        </form>
    </div>
</c:forEach>
</body>
</html>