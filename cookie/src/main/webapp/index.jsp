<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Accueil</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
          integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
</head>
<body>
<c:url value="/connexion" var="lien_connexion"/>
<div class="container-fluid">
    <c:set value="" var="userCookie"/>
    <c:forEach items="${pageContext.request.cookies}" var="cookie">
        <c:if test="${cookie.get('userCookie').getName() == 'userCookie'}">
            <c:set value="${cookie.get('userCookie').getValue()}" var="userCookie"/>
        </c:if>
    </c:forEach>
    <c:if test="${sessionScope.user == null && userCookie == ''}">
    <div class="row">
        <div class="col-4">
            <h1>Connexion</h1>
            <div class="form-group">
                <form action="${lien_connexion}" method="POST">
                    <label for="login">
                        Nom d'utilisateur
                    </label>
                    <input class="form-control" type="text" required name="login" id="login"/>
                    <label for="password">
                        Mot de passe
                    </label>
                    <input class="form-control" type="text" required name="password" id="password"/>
                    <input class="btn btn-success mt-3" type="submit" value="connexion"/>
                </form>
            </div>
        </div>
    </div>
    </c:if>
    <c:if test="${sessionScope.user != null || userCookie != ''}">
        <div class="row">
            <div class="col-4">
                <h1>Connecté</h1>
                <c:url value="/deconnect" var="lien_deconnexion"/>
                <form action="${lien_deconnexion}">
                    <input class="btn btn-danger" type="submit" value="Déconnexion">
                </form>
            </div>
        </div>
    </c:if>
</div>
</body>
</html>