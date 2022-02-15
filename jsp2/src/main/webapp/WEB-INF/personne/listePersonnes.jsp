<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Liste des personnes</title>
</head>
<body>
<h1>Liste des personnes</h1>
<table style="border: 1px solid black;">
    <tr>
        <th style="border: 1px solid black;">Numéro</th>
        <th style="border: 1px solid black;">Nom</th>
        <th style="border: 1px solid black;">Prénom</th>
        <th style="border: 1px solid black;">Action</th>
    </tr>
    <c:forEach items="${liste}" var="personne">
        <tr>
            <td style="border: 1px solid black; text-align: center;"><c:out value="${personne.num}"/></td>
            <td style="border: 1px solid black;"><c:out value="${personne.nom}"/></td>
            <td style="border: 1px solid black;"><c:out value="${personne.prenom}"/></td>
            <td style="border: 1px solid black;">
                <c:url value="/personne" var="lien_modif_personne">
                    <c:param name="operation" value="modification"/>
                    <c:param name="numero" value="${personne.num}"/>
                </c:url>
                <c:url value="/personne" var="lien_suppr_personne">
                    <c:param name="operation" value="suppression"/>
                    <c:param name="numero" value="${personne.num}"/>
                </c:url>
                <a href="${ lien_modif_personne }">Modifier</a>
                <a href="${ lien_suppr_personne }" onclick="return confirm('Êtes-vous sûr de vouloir supprimer ?')">Supprimer</a>
            </td>
        </tr>
    </c:forEach>
</table>
<c:url value="/personne" var="lien_menu_personne">
    <c:param name="operation" value="menu"/>
</c:url>
<a href="${ lien_menu_personne }">Menu personne</a>
</body>
</html>
