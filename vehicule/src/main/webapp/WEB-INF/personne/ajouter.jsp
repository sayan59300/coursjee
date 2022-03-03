<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Ajouter une personne</title>
    <jsp:include page="/WEB-INF/bootstrap.jsp"/>
</head>
<body>
<div class="container-fluid mt-5">
    <jsp:include page="/WEB-INF/template/top-body.jsp"/>
    <h3>Ajouter une personne</h3>
    <div class="form-group">
        <form action="${applicationScope.lien_ajouter_personne}" method="post">
            <label for="nom">Nom</label>
            <input class="form-control" type="text" name="nom" id="nom">
            <label for="prenom">Prénom</label>
            <input class="form-control" type="text" name="prenom" id="prenom">
            <input class="btn btn-success mt-3" type="submit" name="enregistrer" value="Enregistrer">
        </form>
    </div>
</div>
<jsp:include page="/WEB-INF/template/bottom-body.jsp"/>
</body>
</html>