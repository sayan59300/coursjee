<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP2</title>
</head>
<body>
<h1>
    Accueil
</h1>
<c:url value="/personne" var="lien_personne" />
<a href="${ lien_personne }">Personne</a>
<c:set scope="page" var="variable" value="${22}" />
<c:choose>
    <c:when test="${variable <= 5}">
        <c:out value="<p>inférieur à 5</p>" escapeXml="false"/>
    </c:when>
    <c:when test="${variable > 5 and variable <= 10}">
        <c:out value="<p>entre 6 et 10</p>" escapeXml="false"/>
    </c:when>
    <c:otherwise>
        <c:out value="<p>supérieur à 10</p>" escapeXml="false"/>
    </c:otherwise>
</c:choose>
<c:forEach var="i" begin="0" end="10" step="1">
    <c:out value="<p>${ i }</p>" escapeXml="false"/>
</c:forEach>
</body>
</html>