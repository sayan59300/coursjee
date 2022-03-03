<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Liste des personnes</title>
    <jsp:include page="/WEB-INF/bootstrap.jsp"/>
</head>
<body>
<div class="container-fluid mt-5">
    <jsp:include page="/WEB-INF/template/top-body.jsp"/>
    <h3>Liste des personnes</h3>
    <c:forEach items="${liste}" var="personne">
        <p><c:out value="${personne.nom}"/></p>
        <p><c:out value="${personne.prenom}"/></p>
        <hr/>
    </c:forEach>
    <div>
        <a class="btn btn-secondary btn-sm mt-3" href="${applicationScope.lien_accueil}">Retourner à
            l'accueil</a>
    </div>
</div>
<jsp:include page="/WEB-INF/template/bottom-body.jsp"/>
</body>
</html>