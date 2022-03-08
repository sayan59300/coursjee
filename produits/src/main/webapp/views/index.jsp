<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Accueil</title>
</head>
<body>
<h1>Accueil</h1>
<div>
    <c:url value="/produit" var="lienProduits" scope="application"/>
    <c:url value="/produit/ajouter" var="ajouterProduit" scope="application"/>
    <a href="${lienProduits}">Page produits</a>
</div>
</body>
</html>
