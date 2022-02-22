<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Liste des produits</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
          integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
</head>
<body>
<div class="container-fluid">
    <h1>Liste des produits</h1>
    <c:forEach items="${liste}" var="produit">
        <p>Libellé : <c:out value="${produit.libelle}"/></p>
        <p>Référence : <c:out value="${produit.reference}"/></p>
        <p>Prix : <c:out value="${produit.prix}"/></p>
        <hr>
    </c:forEach>
</div>
</body>
</html>
