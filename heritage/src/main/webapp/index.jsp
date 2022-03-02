<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Accueil</title>
    <jsp:include page="/WEB-INF/bootstrap.jsp"/>
</head>
<body>
<c:url value="/personne/ajouter" var="lien_ajouter" scope="application"/>
<c:url value="/personne/liste" var="lien_liste"/>
<div class="container-fluid">
    <h1>Accueil</h1>
    <div>
        <a class="btn btn-primary" href="${lien_ajouter}">Ajouter une personne</a>
    </div>
    <div>
        <a class="btn btn-primary mt-3" href="${lien_liste}">Liste des personnes</a>
    </div>
</div>
</body>
</html>