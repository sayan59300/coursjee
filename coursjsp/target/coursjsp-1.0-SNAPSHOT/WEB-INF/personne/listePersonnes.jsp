<%@ page import="com.coursjsp.model.Personne" %>
<%@ page import="java.util.ArrayList" %>
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
<% ArrayList<Personne> liste = new ArrayList<Personne>(); %>
<% liste = (ArrayList<Personne>) request.getAttribute("liste"); %>
    <% for (Personne personne : liste) { %>
    <tr>
        <td style="border: 1px solid black; text-align: center;"><%= personne.getNum() %></td>
        <td style="border: 1px solid black;"><%= personne.getNom() %></td>
        <td style="border: 1px solid black;"><%= personne.getPrenom() %></td>
        <td style="border: 1px solid black;">
            <a href="/coursjsp_war_exploded/personne?operation=modification&numero=<%= personne.getNum() %>">Modifier</a>
            <a href="/coursjsp_war_exploded/personne?operation=suppression&numero=<%= personne.getNum() %>" onclick="return confirm('Êtes-vous sûr de vouloir supprimer ?')">Supprimer</a>
        </td>
    </tr>
    <% } %>
</table>
<a href="/coursjsp_war_exploded/personne?operation=menu">Retour au menu</a>
</body>
</html>
