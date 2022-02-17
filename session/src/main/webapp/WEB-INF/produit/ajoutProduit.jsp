<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ajouter un produit</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
          integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-6 offset-1">
            <h1>Ajouter un produit</h1>
            <c:url value="/stock" var="lien_stock"/>
            <form action="${lien_stock}" method="post">
                <div class="form-group">
                    <label for="id">Identifiant : </label>
                    <input class="form-control" type="number" step="any" name="id" id="id">
                    <label for="libelle">Libellé : </label>
                    <input class="form-control" type="text" name="libelle" id="libelle">
                    <label for="prix">Prix : </label>
                    <input class="form-control" type="text" name="prix" id="prix">
                    <label for="image">Image : </label>
                    <input class="form-control" type="text" name="image" id="image">
                    <input class="btn btn-success mt-3" type="submit" name="ajouter" value="Ajouter">
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
