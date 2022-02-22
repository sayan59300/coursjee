<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Accueil</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
          integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
</head>
<body>
<c:url value="/personne" var="lien_personne">
    <c:param name="nom" value="BUFFART"/>
    <c:param name="prenom" value="Nicolas"/>
</c:url>
<div class="container-fluid">
    <div class="row">
        <div class="col-4">
            <h1>Personne</h1>
            <a href="${lien_personne}">Personne</a>
        </div>
    </div>
</div>
</body>
</html>