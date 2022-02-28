<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Vos commandes</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
          integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-6">
            <h1>Vos commandes</h1>
            <c:forEach items="${liste}" var="commande">
                <p>Date : <c:out value="${commande.dateCommande}"/></p>
                <c:forEach items="${commande.produitsCommande}" var="produitCommande">
                    <p>Référence : <c:out value="${produitCommande.produit.reference}"/></p>
                    <p>Libellé : <c:out value="${produitCommande.produit.libelle}"/></p>
                    <p>Prix unitaire : <c:out value="${produitCommande.produit.prix}"/></p>
                    <p>Quantité : <c:out value="${produitCommande.quantite}"/></p>
                    <p>Total : <c:out value="${produitCommande.prixTotal}"/></p>
                </c:forEach>
                <hr/>
            </c:forEach>
        </div>
    </div>
</div>
</body>
</html>
