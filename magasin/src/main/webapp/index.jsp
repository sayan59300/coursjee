<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Accueil</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
          integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
</head>
<body>
<c:url value="/connexion" var="lien_connexion"/>
<c:url value="/utilisateur/ajouter" var="lien_enregister_utilisateur" scope="application"/>
<div class="container-fluid">
    <div class="row">
        <div class="col-4">
            <h3>Accueil</h3>
            <div class="form-group">
                <form action="${lien_connexion}" method="POST">
                    <label for="login">
                        Nom d'utilisateur
                    </label>
                    <input class="form-control" type="text" required name="login" id="login"/>
                    <label for="password">
                        Mot de passe
                    </label>
                    <input class="form-control" type="text" required name="password" id="password"/>
                    <input class="btn btn-success mt-3" type="submit" value="connexion"/>
                </form>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-4">
            <h3>Ajouter utilisateur</h3>
            <a class="btn btn-primary" href="${lien_enregister_utilisateur}">Ajouter un utilisateur</a>
        </div>
    </div>
</div>
</body>
</html>