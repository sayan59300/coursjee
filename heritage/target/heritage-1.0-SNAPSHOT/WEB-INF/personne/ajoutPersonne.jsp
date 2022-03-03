<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ajouter une personne</title>
    <jsp:include page="/WEB-INF/bootstrap.jsp"/>
</head>
<body>

<div class="container-fluid">
    <h1>Ajouter une personne</h1>
    <div class="form-group">
        <form action="${applicationScope.lien_ajouter}" method="post">
            <label for="nom">Nom</label>
            <input class="form-control" type="text" name="nom" id="nom">
            <label for="prenom">Prenom</label>
            <input class="form-control" type="text" name="prenom" id="prenom">
            <label for="type">Type</label>
            <select class="form-control" name="type" id="type">
                <option value="pers">Personne</option>
                <option value="etu">Etudiant</option>
                <option value="ens">Enseignant</option>
            </select>
            <hr>
            <span id="ajout_type"></span>
            <input class="btn btn-success mt-3" type="submit" name="enregistrer" value="Enregistrer">
        </form>
    </div>
</div>
<script>
    let select = document.getElementById("type")
    let span = document.getElementById("ajout_type")
    select.addEventListener('change', (event) => {
        switch (select.value) {
            case "etu" :
                span.innerHTML = '<label for="niveau">Niveau</label><input class="form-control" type="text" name="niveau" id="niveau">'
                break
            case "ens" :
                span.innerHTML = '<label for="salaire">Salaire</label><input class="form-control" type="text" name="salaire" id="salaire">'
                break
            default :
                span.innerHTML = ''
                break
        }
    })
</script>
</body>
</html>
