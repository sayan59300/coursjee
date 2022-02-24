<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ajouter un produit</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
          integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
</head>
<body>
<c:url value="/produit/ajouter" var="lien_enregister_produit"/>
<div class="container-fluid">
    <h1>Ajouter un produit</h1>
    <form action="${lien_enregister_produit}" method="post">
        <div class="form-group">
            <label for="libelle">Libellé</label>
            <input class="form-control" type="text" id="libelle" name="libelle">
            <label for="prix">Prix</label>
            <input class="form-control" type="number" step="any" id="prix" name="prix">
            <label for="reference">Référence</label>
            <input class="form-control" type="text" id="reference" name="reference">
            <input class="btn btn-primary mt-3" type="submit" value="Enregistrer">
        </div>
    </form>
</div>
</body>
</html>
