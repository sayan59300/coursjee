<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Modifier un produit</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
          integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
</head>
<body>
<c:url value="/produit/modifier" var="lien_modif_produit"/>
<c:url value="/produit/delete" var="lien_delete_produit"/>
<div class="container-fluid">
    <h3>Modifier produit</h3>
    <form action="${lien_modif_produit}" method="post">
        <div class="form-group">
            <input type="hidden" name="id" value="${produit.id}">
            <label for="libelle">Libellé</label>
            <input class="form-control" type="text" id="libelle" name="libelle" value="${produit.libelle}">
            <label for="prix">Prix</label>
            <input class="form-control" type="number" step="any" id="prix" name="prix" value="${produit.prix}">
            <label for="reference">Référence</label>
            <input class="form-control" type="text" id="reference" name="reference" value="${produit.reference}">
            <input class=" btn btn-primary mt-3" type="submit" value="Enregistrer les modifications">
            <input class=" btn btn-danger mt-3" type="submit" value="Supprimer" formaction="${lien_delete_produit}"
                   onclick="return confirm('Etes vous sur de vouloir supprimer cette entrée ?');">
        </div>
    </form>
</div>
</body>
</html>
