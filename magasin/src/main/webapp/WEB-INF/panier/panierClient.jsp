<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Liste des produits</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
          integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
</head>
<body>
<div class="container-fluid">
    <div class="col-6 offset-4">
        <h1>Panier</h1>
        <c:set var="total_panier" value="${0}"/>
        <c:url value="/commande/validation" var="lien_validation_commande"/>
        <c:forEach items="${sessionScope.paniers}" var="panier">
            <div class="card" style="width: 18rem;">
                <div class="card-body">
                    <h5 class="card-title"><c:out value="${panier.produit.libelle}"/></h5>
                    <h6 class="card-subtitle mb-2 text-muted">Quantité : <c:out value="${panier.quantite}"/></h6>
                    <p class="card-text">Prix unitaire : <fmt:formatNumber value="${panier.produit.prix}"
                                                                           maxFractionDigits="2"/> €</p>
                    <c:set var="total_produit" value="${panier.produit.prix * panier.quantite}"/>
                    <p class="card-text">Total : <fmt:formatNumber value="${total_produit}" maxFractionDigits="2"/>
                        €</p>
                </div>
            </div>
            <c:set var="total_panier" value="${total_panier + (panier.produit.prix * panier.quantite)}"/>
        </c:forEach>
        <p>Total à payer : <fmt:formatNumber value="${total_panier}" maxFractionDigits="2"/> €</p>
        <a class="btn btn-success" href="${lien_validation_commande}">Commander</a>
    </div>
</div>
</body>
</html>
