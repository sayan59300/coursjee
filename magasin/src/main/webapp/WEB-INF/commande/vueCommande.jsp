<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Commande du <c:out value="${commande.dateCommande}"/></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
          integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-12">
            <h3>
                Commande du
                <fmt:formatDate pattern="dd-MM-yyyy" value="${commande.dateCommande}"/>
            </h3>
            <c:set var="total_commande" value="${0}"/>
            <table class="table">
                <thead class="thead-dark">
                <tr>
                    <th>Référence</th>
                    <th>Libellé</th>
                    <th>Prix unitaire</th>
                    <th>Quantité</th>
                    <th>Total</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${commande.produitsCommande}" var="produitCommande">
                    <tr>
                        <td><c:out value="${produitCommande.produit.reference}"/></td>
                        <td><c:out value="${produitCommande.produit.libelle}"/></td>
                        <td><c:out value="${produitCommande.produit.prix}"/> €</td>
                        <td><c:out value="${produitCommande.quantite}"/></td>
                        <td><c:out value="${produitCommande.prixTotal}"/> €</td>
                    </tr>
                    <c:set var="total_commande" value="${total_commande + produitCommande.prixTotal}"/>
                </c:forEach>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>Total commande</td>
                    <td><c:out value="${total_commande}"/> €</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>