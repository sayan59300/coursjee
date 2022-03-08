<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Accueil produits</title>
</head>
<body>
<h1>Accueil produits</h1>
<c:url value="/produit/ajouter" var="ajouterProduit"/>
<form action="${ajouterProduit}" method="post">
<table>
    <tr>
        <td>Numéro du produit : </td>
        <td></td>
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
<c:forEach items="${produits}" var="produit">
    <p><c:out value="${produit.nom}"/> : <c:out value="${produit.prix}"/></p>
</c:forEach>
</body>
</html>