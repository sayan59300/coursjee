<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Menu colis</title>
    <jsp:include page="/WEB-INF/bootstrap.jsp"/>
</head>
<body>
<div class="container-fluid mt-5">
    <jsp:include page="/WEB-INF/template/top-body.jsp"/>
    <h3>Menu colis</h3>
    <div>
        <a class="btn btn-primary btn-sm mt-3" href="${applicationScope.lien_ajouter_colis}">Ajouter colis</a>
    </div>
    <div>
        <a class="btn btn-primary btn-sm mt-3" href="${applicationScope.lien_liste_colis}">Liste des colis</a>
    </div>
    <div>
        <a class="btn btn-secondary btn-sm mt-3" href="${applicationScope.lien_accueil}">Retourner à
            l'accueil</a>
    </div>
</div>
<jsp:include page="/WEB-INF/template/bottom-body.jsp"/>
</body>
</html>