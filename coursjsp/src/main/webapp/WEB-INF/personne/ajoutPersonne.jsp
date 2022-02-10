<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/coursjsp_war_exploded/personne?operation=ajout" method="POST">
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
        <input type="submit" name="enregistrer" value="envoyer">
    </div>
</form>
</body>
</html>
