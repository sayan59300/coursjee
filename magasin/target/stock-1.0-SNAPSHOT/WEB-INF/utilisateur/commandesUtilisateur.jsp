<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Vos commandes</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
          integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-6">
            <h3>Vos commandes</h3>
            <c:forEach items="${liste}" var="commande">
                <c:url value="/commande" var="lien_commande">
                    <c:param name="id" value="${commande.id}"/>
                </c:url>
                <p>
                    Date : <a href="${lien_commande}">
                    <fmt:formatDate pattern="dd-MM-yyyy" value="${commande.dateCommande}"/>
                    n° <c:out value="${commande.id}"/></a>
                </p>
                <hr/>
            </c:forEach>
        </div>
    </div>
</div>
</body>
</html>
