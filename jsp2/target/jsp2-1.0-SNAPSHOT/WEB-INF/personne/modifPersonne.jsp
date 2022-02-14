<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:url value="/personne" var="lien_modif_personne">
    <c:param name="operation" value="modifier"/>
    <c:param name="numero" value="${personne.num}"/>
</c:url>
<form action="${ lien_modif_personne }" method="POST">
    <input type="hidden" name="numero" value="${ personne.num }">
    <div>
        <label for="nom">Entrer le nom</label>
        <input type="text" name="nom" id="nom" value="${ personne.nom }">
    </div>
    <hr>
    <div>
        <label for="prenom">Entrer le prénom</label>
        <input type="text" name="prenom" id="prenom" value="${ personne.prenom }">
    </div>
    <hr>
    <div>
        <input type="submit" name="soumettre" value="modifier">
    </div>
</form>
<c:url value="/personne" var="lien_menu_personne">
    <c:param name="operation" value="menu"/>
</c:url>
<a href="${ lien_menu_personne }">Menu personne</a>
</body>
</html>
