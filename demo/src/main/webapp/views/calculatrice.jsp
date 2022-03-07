<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Calculatrice</title>
</head>
<body>
<h1>Calculatrice</h1>
<form action="/calculatrice" method="post">
    <div>
        <label for="nb1">Nombre 1</label><input type="number" step="any" name="nb1" id="nb1">
    </div>
    <div>
        <label for="operateur">Opérateur</label>
        <select name="operateur" id="operateur">
            <option value="+">+</option>
            <option value="-">-</option>
            <option value="/">/</option>
            <option value="*">*</option>
        </select>
    </div>
    <div>
        <label for="nb2">Nombre 2</label><input type="number" step="any" name="nb2" id="nb2">
        <input type="submit" value="Calculer">
    </div>
    <div>
        Résultat = <c:out value="${resultat}"/>
    </div>
</form>
</body>
</html>