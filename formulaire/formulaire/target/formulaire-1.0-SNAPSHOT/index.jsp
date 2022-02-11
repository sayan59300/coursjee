<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Inscription</title>
</head>
<body>
<div style="border: 5px ridge darkgoldenrod; width: 400px; padding: 0 0 15px 15px;">
    <h1>Inscription</h1>
    <form method="post" action="/inscription">
    <table style="border: 1px solid black; padding: 10px;">
        <tr>
            <td>
                <label for="nom">Nom</label>
            </td>
            <td>
                <input name="nom" type="text" id="nom">
            </td>
            <td>*</td>
        </tr>
        <tr>
            <td>
                <label for="prenom">Prénom</label>
            </td>
            <td>
                <input name="prenom" type="text" id="prenom">
            </td>
            <td>*</td>
        </tr>
        <tr>
            <td>
                <label for="email">Email</label>
            </td>
            <td>
                <input name="email" type="email" id="email">
            </td>
            <td>*</td>
        </tr>
        <tr>
            <td>
                <label for="date">Date de naissance</label>
            </td>
            <td>
                <input name="date" type="date" id="date">
            </td>
            <td>*</td>
        </tr>
        <tr>
            <td>
                <label for="phone">Téléphone</label>
            </td>
            <td>
                <input name="phone" type="text" id="phone">
            </td>
            <td>*</td>
        </tr>
        <tr>
            <td>
                <label>Sexe</label>
            </td>
            <td>
                <label for="sexe_homme">Homme</label>
                <input name="sexe" type="radio" id="sexe_homme" value="homme">
                <label for="sexe_femme">Femme</label>
                <input name="sexe" type="radio" id="sexe_femme" value="femme">
            </td>
            <td>*</td>
        </tr>
        <tr>
            <td>
                <label for="password">Mot de passe</label>
            </td>
            <td>
                <input name="password" type="password" id="password">
            </td>
            <td>*</td>
        </tr>
        <tr>
            <td>
                <label for="password_confirm">Confirmation mot de passe</label>
            </td>
            <td>
                <input name="password_confirm" type="password" id="password_confirm">
            </td>
            <td>*</td>
        </tr>
        <tr>
            <td>
                <label for="password_confirm">Pays</label>
            </td>
            <td>
                <select name="pays" id="pays">
                    <option value="france">France</option>
                    <option value="maroc">Maroc</option>
                    <option value="espagne">Espagne</option>
                    <option value="angleterre">Angleterre</option>
                    <option value="belgique">Belgique</option>
                </select>
            </td>
            <td>*</td>
        </tr>
        <tr>
            <td>
                <label>Langages préférés</label>
            </td>
            <td>
                <div>
                    <input name="languages" type="checkbox" id="C++">
                    <label for="C++">C++</label>
                </div>
                <div>
                    <input name="languages" type="checkbox" id="JAVA">
                    <label for="JAVA">JAVA</label>
                </div>
                <div>
                    <input name="languages" type="checkbox" id="PHP">
                    <label for="PHP">PHP</label>
                </div>
                <div>
                    <input name="languages" type="checkbox" id="Perl">
                    <label for="Perl">Perl</label>
                </div>
            </td>
            <td>*</td>
        </tr>
        <tr>
            <td></td>
            <td>
                <input type="button" name="envoyer" value="Valider">
                <input type="button" name="annuler" value="Annuler">
            </td>
            <td>
            </td>
        </tr>
    </table>
    </form>
</div>
</body>
</html>