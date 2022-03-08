<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Accueil produits</title>
</head>
<body>
<h1>Accueil produits</h1>
<form action="${applicationScope.ajouterProduit}" method="post">
<table>
    <tr>
        <td>Numéro du produit : </td>
        <td>${produit.id}</td>
    </tr>
    <tr>
        <td><label for="nom">Nom du produit</label></td>
        <td><input type="text" name="nom" id="nom"/></td>
    </tr>
    <tr>
        <td><label for="prix">Prix : </label></td>
        <td><input type="number" step="any" name="prix" id="prix"/></td>
    </tr>
    <tr>
        <td></td>
        <td><input type="submit" name="envoyer" value="Enregistrer"></td>
    </tr>
</table>
</form>
</body>
</html>