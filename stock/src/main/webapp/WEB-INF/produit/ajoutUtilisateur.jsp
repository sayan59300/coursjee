<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ajouter un utilisateur</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
          integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
</head>
<body>
<c:url value="/utilisateur/ajouter" var="lien_enregister_produit"/>
<div class="container-fluid">
    <h1>Ajouter un utilisateur</h1>
    <form action="${lien_enregister_produit}" method="post">
        <div class="form-group">
            <label for="pseudo">Pseudo</label>
            <input class="form-control" type="text" id="pseudo" name="pseudo">
            <input class="btn btn-primary mt-3" type="submit" value="Enregistrer">
        </div>
    </form>
</div>
</body>
</html>
