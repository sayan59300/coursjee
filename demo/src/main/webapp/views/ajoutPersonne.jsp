<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Ajouter personne</title>
</head>
<body>
<h1>Ajouter personne</h1>
<form action="/personne/ajouter" method="post">
    <div>
        <label for="nom">Nom</label><input type="text" name="nom" id="nom">
    </div>
    <div>
        <label for="prenom">Prénom</label><input type="text" name="prenom" id="prenom">
    </div>
    <div>
        <input type="submit" value="Enregistrer">
    </div>
</form>
</body>
</html>