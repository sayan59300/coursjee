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
    <c:url value="/ajouter-produit" var="lien_ajout_produit"/>
    <c:url value="/panier-client" var="lien_ajouter_article"/>
    <div class="row">
        <c:forEach items="${liste}" var="produit">
            <div class="col-4">
                <div class="card" style="width: 18rem;">
                    <img src="<c:out value="${produit.image}"/>" class="card-img-top"
                         alt="<c:out value="${produit.libelle}"/>">
                    <div class="card-body">
                        <h5 class="card-title">
                            <c:out value="${produit.libelle}"/>
                        </h5>
                        <p class="card-text">Prix : <c:out value="${produit.prix}"/></p>
                        <form action="${lien_ajouter_article}" method="post">
                            <input type="hidden" name="id" value="${produit.id}">
                            <input class="btn btn-primary" type="submit" value="Ajouter au panier">
                        </form>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
    <div class="row">
        <div class="col-3 mt-3">
            <a class="btn btn-primary" href="${lien_ajout_produit}">Ajouter un produit</a>
        </div>
    </div>
</div>
</body>
</html>
