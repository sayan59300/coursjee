<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Accueil</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
          integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
</head>
<body>
<div class="container-fluid">
    <h1>
        Accueil
    </h1>
    <c:url scope="application" value="/ajouter-produit" var="lien_ajout_produit"/>
    <div>
        <a class="btn btn-primary mt-3" href="${lien_ajout_produit}">Ajouter un produit</a>
    </div>
    <c:url scope="application" value="/liste-produit" var="lien_liste_produit"/>
    <div>
        <a class="btn btn-primary mt-3" href="${lien_liste_produit}">Liste des produits</a>
    </div>
    <c:url scope="application" value="/panier" var="lien_accueil_panier"/>
    <div>
        <a class="btn btn-primary mt-3" href="${lien_accueil_panier}">Panier</a>
    </div>
</div>
</body>
</html>