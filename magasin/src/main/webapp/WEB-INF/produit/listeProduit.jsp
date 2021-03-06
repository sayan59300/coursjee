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
    <c:url value="/panier" var="lien_panier"/>
    <c:url value="/utilisateur/commandes" var="lien_commandes"/>
    <div class="row">
        <div class="col-6">
            <h3>Liste des produits</h3>
            <c:forEach items="${liste}" var="produit">
                <c:set var="quantite_panier" value=""/>
                <c:forEach items="${sessionScope.paniers}" var="panier">
                    <c:if test="${panier.produit.id == produit.id}">
                        <c:set var="quantite_panier" value="${panier.quantite}"/>
                    </c:if>
                </c:forEach>
                <p>Libellé : <c:out value="${produit.libelle}"/></p>
                <p>Référence : <c:out value="${produit.reference}"/></p>
                <p>Prix : <c:out value="${produit.prix}"/> €</p>
                <div class="form-group">
                    <form action="${lien_panier}" method="post">
                        <input type="hidden" name="id" value="${produit.id}">
                        <label for="quantite">Quantité</label>
                        <input class="form-control col-3" type="number" name="quantite" id="quantite" min="1"
                               value="${quantite_panier}">
                        <input class="btn btn-success mt-3" type="submit" name="ajouter" value="Ajouter au panier">
                    </form>
                </div>
                <hr/>
            </c:forEach>
        </div>
        <div class="col-6">
            <a class="btn btn-primary mt-3" href="${lien_commandes}">Vos commandes</a>
            <a class="btn btn-danger mt-3" href="${applicationScope.deconnexion}">Déconnexion</a>
            <h1>Panier</h1>
            <c:set var="total_panier" value="${0}"/>
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
            <a class="btn btn-success" href="${lien_panier}">Valider la commande</a>
        </div>
    </div>
</div>
</body>
</html>
