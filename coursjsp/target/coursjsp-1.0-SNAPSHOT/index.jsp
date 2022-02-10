<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<%
    String nom = (String) request.getAttribute("nom");
    String prenom = (String) request.getAttribute("prenom");
%>

<%= "<br/>Hello " + nom + " " + prenom %>
<hr>
<ul>
    <li>
        <a href="/coursjsp_war_exploded/hello" target="_blank">Hello</a>
    </li>
    <li>
        <a href="/coursjsp_war_exploded/calcul" target="_blank">Calcul</a>
    </li>
    <li>
        <a href="/coursjsp_war_exploded/personne?operation=lister" target="_blank">Personne</a>
    </li>
</ul>
</body>
</html>