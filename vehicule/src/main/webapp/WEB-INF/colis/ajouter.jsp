<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Ajouter un colis</title>
    <jsp:include page="/WEB-INF/bootstrap.jsp"/>
</head>
<body>
<div class="container-fluid mt-5">
    <jsp:include page="/WEB-INF/template/top-body.jsp"/>
    <h3>Ajouter un colis</h3>
    <div class="form-group">
        <form action="${applicationScope.lien_ajouter_colis}" method="post">
            <label for="nature">Nature</label>
            <input class="form-control" type="number" name="nature" id="nature">
            <input class="btn btn-success mt-3" type="submit" name="enregistrer" value="Enregistrer">
        </form>
    </div>
</div>
<jsp:include page="/WEB-INF/template/bottom-body.jsp"/>
</body>
</html>