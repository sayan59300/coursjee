<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Menu personne</title>
</head>
<body>
<h1>Menu personne</h1>
<ul>
    <li>
        <c:url value="/personne" var="lien_liste_personne">
            <c:param name="operation" value="lister"/>
        </c:url>
        <a href="${lien_liste_personne}">Lister les personnes</a>
    </li>
    <li>
        <c:url value="/personne" var="lien_ajout_personne">
            <c:param name="operation" value="ajout"/>
        </c:url>
        <a href="${lien_ajout_personne}">Ajouter une personne</a>
    </li>
</ul>
<c:url value="/" var="lien_accueil"/>
<a href="${lien_accueil}">Retour au menu</a>
</body>
</html>
