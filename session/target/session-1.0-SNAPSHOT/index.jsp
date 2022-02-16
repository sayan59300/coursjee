<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Accueil</title>
</head>
<body>
<h1>
    Accueil
</h1>
<c:url scope="application" value="/produit" var="lien_accueil_produit"/>
<div>
    <a href="${lien_accueil_produit}">Ajouter un produit</a>
</div>
<c:url scope="application" value="/panier" var="lien_accueil_panier"/>
<div>
    <a href="${lien_accueil_panier}">Panier</a>
</div>
</body>
</html>