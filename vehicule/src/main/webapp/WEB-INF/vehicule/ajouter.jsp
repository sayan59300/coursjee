<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Ajouter un véhicule</title>
    <jsp:include page="/WEB-INF/bootstrap.jsp"/>
</head>
<body>
<div class="container-fluid mt-5">
    <jsp:include page="/WEB-INF/template/top-body.jsp"/>
    <h3>Ajouter un véhicule</h3>
    <div class="form-group">
        <form action="${applicationScope.lien_ajouter}" method="post">
            <label for="immat">Immatriculation</label>
            <input class="form-control" type="text" name="immat" id="immat">
            <label for="type">Type</label>
            <select class="form-control" name="type" id="type">
                <option value=""></option>
                <option value="voiture">Voiture</option>
                <option value="camion">Camion</option>
            </select>
            <hr>
            <span id="ajout_type"></span>
            <input class="btn btn-success mt-3" type="submit" name="enregistrer" value="Enregistrer">
        </form>
    </div>
</div>
<jsp:include page="/WEB-INF/template/bottom-body.jsp"/>
<script>
    let select = document.getElementById("type")
    let span = document.getElementById("ajout_type")
    select.addEventListener('change', (event) => {
        switch (select.value) {
            case "voiture" :
                span.innerHTML = '<label for="portes">Nombre de portes</label><input class="form-control col-2" type="number" name="portes" id="portes" min="2" max="5">'
                break
            case "camion" :
                span.innerHTML = '<label for="volume">Volume</label><input class="form-control col-2" type="number" name="volume" id="volume" min="5" max="90" placeholder="m3">'
                break
            default :
                span.innerHTML = ''
                break
        }
    })
</script>
</body>
</html>