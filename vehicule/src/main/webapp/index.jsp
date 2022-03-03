<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Accueil</title>
    <jsp:include page="/WEB-INF/bootstrap.jsp"/>
</head>
<body>
<div class="container-fluid mt-5">
    <c:url value="/" var="lien_accueil" scope="application"/>
    <c:url value="/vehicule/menu" var="lien_menu_vehicule" scope="application"/>
    <c:url value="/personne/menu" var="lien_menu_personne" scope="application"/>
    <c:url value="/colis/menu" var="lien_menu_colis" scope="application"/>
    <c:url value="/vehicule/ajouter" var="lien_ajouter_vehicule" scope="application"/>
    <c:url value="/vehicule/liste" var="lien_liste_vehicule" scope="application"/>
    <c:url value="/personne/ajouter" var="lien_ajouter_personne" scope="application"/>
    <c:url value="/personne/liste" var="lien_liste_personne" scope="application"/>
    <c:url value="/colis/ajouter" var="lien_ajouter_colis" scope="application"/>
    <c:url value="/colis/liste" var="lien_liste_colis" scope="application"/>
    <jsp:include page="/WEB-INF/template/top-body.jsp"/>
    <h3>Accueil</h3>
    <div>
        <a class="btn btn-primary btn-sm mt-3" href="${lien_menu_vehicule}">Menu véhicule</a>
    </div>
    <div>
        <a class="btn btn-primary btn-sm mt-3" href="${lien_menu_personne}">Menu personne</a>
    </div>
    <div>
        <a class="btn btn-primary btn-sm mt-3" href="${lien_menu_colis}">Menu colis</a>
    </div>
</div>
<jsp:include page="/WEB-INF/template/bottom-body.jsp"/>
</body>
</html>