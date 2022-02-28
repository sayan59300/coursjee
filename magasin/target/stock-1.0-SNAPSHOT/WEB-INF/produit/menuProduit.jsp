<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Accueil produit</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
          integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
</head>
<body>
<div class="container-fluid">
    <c:url value="/produit/ajouter" var="lien_ajout_produit"/>
    <c:url value="/produit/liste" var="lien_liste_produit"/>
    <c:url value="/deconnect" var="deconnexion" scope="application"/>
    <h1>Gestion des stocks</h1>
    <div><a class="btn btn-primary mt-3" href="${lien_ajout_produit}">Ajouter un produit</a></div>
    <div><a class="btn btn-primary mt-3" href="${lien_liste_produit}">Liste des produits</a></div>
    <div><a class="btn btn-danger mt-3" href="${deconnexion}">Se deconnecter</a></div>
</div>
</body>
</html>