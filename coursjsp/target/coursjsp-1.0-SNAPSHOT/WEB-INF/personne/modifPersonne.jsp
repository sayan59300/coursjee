<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.coursjsp.model.Personne" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/coursjsp_war_exploded/personne?operation=modifier" method="POST">
    <% Personne personne = (Personne) request.getAttribute("personne"); %>
    <input type="hidden" name="numero" value="<%= personne.getNum() %>">
    <div>
        <label for="nom">Entrer le nom</label>
        <input type="text" name="nom" id="nom" value="<%= personne.getNom() %>">
    </div>
    <hr>
    <div>
        <label for="prenom">Entrer le prénom</label>
        <input type="text" name="prenom" id="prenom" value="<%= personne.getPrenom() %>">
    </div>
    <hr>
    <div>
        <input type="submit" name="soumettre" value="modifier">
    </div>
</form>
<a href="/coursjsp_war_exploded/personne?operation=menu">Retour au menu</a>
</body>
</html>
