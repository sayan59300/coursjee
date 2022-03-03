<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Liste des personnes</title>
    <jsp:include page="/WEB-INF/bootstrap.jsp"/>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-12">
            <c:url value="/" var="lien_menu"/>
            <a class="btn btn-primary mt-3 mb-3" href="${lien_menu}">Retour au menu</a>
            <h3>
                Liste des personnes
            </h3>
            <table class="table">
                <thead class="thead-dark">
                <tr>
                    <th>Nom</th>
                    <th>Prénom</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${personnes}" var="personne">
                    <tr>
                        <td><c:out value="${personne.nom}"/></td>
                        <td><c:out value="${personne.prenom}"/></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <h3>
                Liste des etudiants
            </h3>
            <table class="table">
                <thead class="thead-dark">
                <tr>
                    <th>Nom</th>
                    <th>Prénom</th>
                    <th>Niveau</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${etudiants}" var="etudiant">
                    <tr>
                        <td><c:out value="${etudiant.nom}"/></td>
                        <td><c:out value="${etudiant.prenom}"/></td>
                        <td><c:out value="${etudiant.niveau}"/></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <h3>
                Liste des enseignants
            </h3>
            <table class="table">
                <thead class="thead-dark">
                <tr>
                    <th>Nom</th>
                    <th>Prénom</th>
                    <th>Salaire</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${enseignants}" var="enseignant">
                    <tr>
                        <td><c:out value="${enseignant.nom}"/></td>
                        <td><c:out value="${enseignant.prenom}"/></td>
                        <td><c:out value="${enseignant.salaire}"/></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
