<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Liste des produits</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
          integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-12">
            <h1>Liste des produits</h1>
        </div>
    </div>
    <c:url value="/" var="lien_accueil"/>
    <div class="row">
        <c:forEach items="${liste}" var="produit">
            <div class="col-3">
                <div class="card" style="width: 18rem;">
                    <img src="<c:out value="${produit.image}"/>" class="card-img-top"
                         alt="<c:out value="${produit.libelle}"/>">
                    <div class="card-body">
                        <h5 class="card-title">
                            <c:out value="${produit.libelle}"/>
                        </h5>
                        <p class="card-text">Prix : <c:out value="${produit.prix}"/></p>
                        <a href="#" class="btn btn-primary">Ajouter au panier</a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
    <div class="row">
        <div class="col-3">
            <a class="btn btn-success" href="${lien_accueil}">Retour à l'accueil</a>
        </div>
    </div>
</div>
</body>
</html>
