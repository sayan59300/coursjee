<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:url value="/personne" var="lien_ajout_personne">
    <c:param name="operation" value="ajout"/>
</c:url>
<form action="${ lien_ajout_personne }" method="POST">
    <div>
        <label for="numero">Entrer le numéro</label>
        <input type="text" name="numero" id="numero">
    </div>
    <hr>
    <div>
        <label for="nom">Entrer le nom</label>
        <input type="text" name="nom" id="nom">
    </div>
    <hr>
    <div>
        <label for="prenom">Entrer le prénom</label>
        <input type="text" name="prenom" id="prenom">
    </div>
    <hr>
    <div>
        <input type="submit" name="soumettre" value="enregistrer">
    </div>
</form>
<c:url value="/personne" var="lien_menu_personne">
    <c:param name="operation" value="menu"/>
</c:url>
<a href="${ lien_menu_personne }">Menu personne</a>
</body>
</html>
