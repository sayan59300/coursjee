<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.jsp2.model.Personne" %>
<html>
<head>
    <title>Personne</title>
</head>
<body>
<c:forEach items="${ liste }" var="personne">
    <c:out value="<p>${ personne.getNom() }</p>" escapeXml="false"/>
</c:forEach>
</body>
</html>
