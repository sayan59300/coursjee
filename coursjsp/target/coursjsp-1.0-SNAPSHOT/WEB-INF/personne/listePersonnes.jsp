<%@ page import="com.coursjsp.model.Personne" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Liste des personnes</title>
</head>
<body>
<h1>Liste des personnes</h1>
<ul>
    <li>
        <a href="/coursjsp_war_exploded/personne?operation=ajout" target="_blank">ajouter une personne</a>
    </li>
    <li>
        <!--<a href="/coursjsp_war_exploded/calcul" target="_blank">Calcul</a>-->
    </li>
    <li>
        <!--<a href="/coursjsp_war_exploded/personne" target="_blank">Personne</a>-->
    </li>
</ul>
<% String tableau = (String) request.getAttribute("tableau"); %>
<%= tableau %>
</body>
</html>
