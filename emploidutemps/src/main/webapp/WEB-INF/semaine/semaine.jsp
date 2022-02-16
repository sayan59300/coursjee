<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Emploi du temps</title>
    <style>
        table, th, td {
            border: 1px solid black;
            background-color: lightgray;
        }

        th, td {
            border: 1px solid black;
            padding: 0 10px 0 10px;
        }

        .jour {
            background-color: white;
        }

        div {
            padding: 10px 0 10px 0;
        }
    </style>
</head>
<body>
<table>
    <tr>
        <th></th>
        <th class="jour">Lundi</th>
        <th class="jour">Mardi</th>
        <th class="jour">Mercredi</th>
        <th class="jour">Jeudi</th>
        <th class="jour">Vendredi</th>
    </tr>
    <tr>
        <td>8:30</td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Lundi' and (creneau.heureDebut == 1)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mardi' and creneau.heureDebut == 1}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mercredi' and creneau.heureDebut == 1}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Jeudi' and creneau.heureDebut == 1}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Vendredi' and creneau.heureDebut == 1}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>9:00</td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Lundi' and (creneau.heureDebut == 2 or creneau.heureFin >= 2)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mardi' and (creneau.heureDebut == 2 or creneau.heureFin >= 2)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mercredi' and (creneau.heureDebut == 2 or creneau.heureFin >= 2)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Jeudi' and (creneau.heureDebut == 2 or creneau.heureFin >= 2)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Vendredi' and (creneau.heureDebut == 2 or creneau.heureFin >= 2)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>9:30</td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Lundi' and (creneau.heureDebut == 3 or creneau.heureFin >= 3)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mardi' and (creneau.heureDebut == 3 or creneau.heureFin >= 3)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mercredi' and (creneau.heureDebut == 3 or creneau.heureFin >= 3)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Jeudi' and (creneau.heureDebut == 3 or creneau.heureFin >= 3)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Vendredi' and (creneau.heureDebut == 3 or creneau.heureFin >= 3)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>10:00</td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Lundi' and (creneau.heureDebut == 4 or creneau.heureFin >= 4)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mardi' and (creneau.heureDebut == 4 or creneau.heureFin >= 4)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mercredi' and (creneau.heureDebut == 4 or creneau.heureFin >= 4)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Jeudi' and (creneau.heureDebut == 4 or creneau.heureFin >= 4)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Vendredi' and (creneau.heureDebut == 4 or creneau.heureFin >= 4)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>10:30</td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Lundi' and (creneau.heureDebut == 5 or creneau.heureFin >= 5)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mardi' and (creneau.heureDebut == 5 or creneau.heureFin >= 5)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mercredi' and (creneau.heureDebut == 5 or creneau.heureFin >= 5)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Jeudi' and (creneau.heureDebut == 5 or creneau.heureFin >= 5)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Vendredi' and (creneau.heureDebut == 5 or creneau.heureFin >= 5)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>11:00</td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Lundi' and (creneau.heureDebut == 6 or creneau.heureFin >= 6)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mardi' and (creneau.heureDebut == 6 or creneau.heureFin >= 6)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mercredi' and (creneau.heureDebut == 6 or creneau.heureFin >= 6)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Jeudi' and (creneau.heureDebut == 6 or creneau.heureFin >= 6)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Vendredi' and (creneau.heureDebut == 6 or creneau.heureFin >= 6)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>11:30</td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Lundi' and (creneau.heureDebut == 7 or creneau.heureFin >= 7)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mardi' and (creneau.heureDebut == 7 or creneau.heureFin >= 7)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mercredi' and (creneau.heureDebut == 7 or creneau.heureFin >= 7)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Jeudi' and (creneau.heureDebut == 7 or creneau.heureFin >= 7)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Vendredi' and (creneau.heureDebut == 7 or creneau.heureFin >= 7)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>12:00</td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Lundi' and (creneau.heureDebut == 8 or creneau.heureFin >= 8)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mardi' and (creneau.heureDebut == 8 or creneau.heureFin >= 8)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mercredi' and (creneau.heureDebut == 8 or creneau.heureFin >= 8)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Jeudi' and (creneau.heureDebut == 8 or creneau.heureFin >= 8)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Vendredi' and (creneau.heureDebut == 8 or creneau.heureFin >= 8)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>12:30</td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Lundi' and (creneau.heureDebut == 9 or creneau.heureFin >= 9)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mardi' and (creneau.heureDebut == 9 or creneau.heureFin >= 9)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mercredi' and (creneau.heureDebut == 9 or creneau.heureFin >= 9)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Jeudi' and (creneau.heureDebut == 9 or creneau.heureFin >= 9)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Vendredi' and (creneau.heureDebut == 9 or creneau.heureFin >= 9)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>13:00</td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Lundi' and (creneau.heureDebut == 10 or creneau.heureFin >= 10)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mardi' and (creneau.heureDebut == 10 or creneau.heureFin >= 10)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mercredi' and (creneau.heureDebut == 10 or creneau.heureFin >= 10)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Jeudi' and (creneau.heureDebut == 10 or creneau.heureFin >= 10)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Vendredi' and (creneau.heureDebut == 10 or creneau.heureFin >= 10)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>13:30</td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Lundi' and (creneau.heureDebut == 11 or creneau.heureFin >= 11)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mardi' and (creneau.heureDebut == 11 or creneau.heureFin >= 11)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mercredi' and (creneau.heureDebut == 11 or creneau.heureFin >= 11)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Jeudi' and (creneau.heureDebut == 11 or creneau.heureFin >= 11)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Vendredi' and (creneau.heureDebut == 11 or creneau.heureFin >= 11)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>14:00</td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Lundi' and (creneau.heureDebut == 12 or creneau.heureFin >= 12)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mardi' and (creneau.heureDebut == 12 or creneau.heureFin >= 12)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mercredi' and (creneau.heureDebut == 12 or creneau.heureFin >= 12)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Jeudi' and (creneau.heureDebut == 12 or creneau.heureFin >= 12)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Vendredi' and (creneau.heureDebut == 12 or creneau.heureFin >= 12)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>14:30</td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Lundi' and (creneau.heureDebut == 13 or creneau.heureFin >= 13)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mardi' and (creneau.heureDebut == 13 or creneau.heureFin >= 13)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mercredi' and (creneau.heureDebut == 13 or creneau.heureFin >= 13)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Jeudi' and (creneau.heureDebut == 13 or creneau.heureFin >= 13)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Vendredi' and (creneau.heureDebut == 13 or creneau.heureFin >= 13)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>15:00</td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Lundi' and (creneau.heureDebut == 14 or creneau.heureFin >= 14)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mardi' and (creneau.heureDebut == 14 or creneau.heureFin >= 14)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mercredi' and (creneau.heureDebut == 14 or creneau.heureFin >= 14)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Jeudi' and (creneau.heureDebut == 14 or creneau.heureFin >= 14)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Vendredi' and (creneau.heureDebut == 14 or creneau.heureFin >= 14)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>15:30</td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Lundi' and (creneau.heureDebut == 15 or creneau.heureFin >= 15)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mardi' and (creneau.heureDebut == 15 or creneau.heureFin >= 15)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mercredi' and (creneau.heureDebut == 15 or creneau.heureFin >= 15)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Jeudi' and (creneau.heureDebut == 15 or creneau.heureFin >= 15)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Vendredi' and (creneau.heureDebut == 15 or creneau.heureFin >= 15)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>16:00</td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Lundi' and (creneau.heureDebut == 16 or creneau.heureFin >= 16)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mardi' and (creneau.heureDebut == 16 or creneau.heureFin >= 16)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mercredi' and (creneau.heureDebut == 16 or creneau.heureFin >= 16)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Jeudi' and (creneau.heureDebut == 16 or creneau.heureFin >= 16)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Vendredi' and (creneau.heureDebut == 16 or creneau.heureFin >= 16)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>16:30</td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Lundi' and (creneau.heureDebut == 17 or creneau.heureFin >= 17)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mardi' and (creneau.heureDebut == 17 or creneau.heureFin >= 17)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mercredi' and (creneau.heureDebut == 17 or creneau.heureFin >= 17)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Jeudi' and (creneau.heureDebut == 17 or creneau.heureFin >= 17)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Vendredi' and (creneau.heureDebut == 17 or creneau.heureFin >= 17)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>17:00</td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Lundi' and (creneau.heureDebut == 18 or creneau.heureFin >= 18)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mardi' and (creneau.heureDebut == 18 or creneau.heureFin >= 18)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mercredi' and (creneau.heureDebut == 18 or creneau.heureFin >= 18)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Jeudi' and (creneau.heureDebut == 18 or creneau.heureFin >= 18)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Vendredi' and (creneau.heureDebut == 18 or creneau.heureFin >= 18)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>17:30</td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Lundi' and (creneau.heureDebut == 19 or creneau.heureFin >= 19)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mardi' and (creneau.heureDebut == 19 or creneau.heureFin >= 19)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mercredi' and (creneau.heureDebut == 19 or creneau.heureFin >= 19)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Jeudi' and (creneau.heureDebut == 19 or creneau.heureFin >= 19)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Vendredi' and (creneau.heureDebut == 19 or creneau.heureFin >= 19)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>18:00</td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Lundi' and (creneau.heureDebut == 20 or creneau.heureFin >= 20)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mardi' and (creneau.heureDebut == 20 or creneau.heureFin >= 20)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mercredi' and (creneau.heureDebut == 20 or creneau.heureFin >= 20)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Jeudi' and (creneau.heureDebut == 20 or creneau.heureFin >= 20)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Vendredi' and (creneau.heureDebut == 20 or creneau.heureFin >= 20)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>18:30</td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Lundi' and (creneau.heureDebut == 21 or creneau.heureFin >= 21)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mardi' and (creneau.heureDebut == 21 or creneau.heureFin >= 21)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mercredi' and (creneau.heureDebut == 21 or creneau.heureFin >= 21)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Jeudi' and (creneau.heureDebut == 21 or creneau.heureFin >= 21)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Vendredi' and (creneau.heureDebut == 21 or creneau.heureFin >= 21)}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
    </tr>
</table>
<c:url value="/emploi-du-temps" var="lien_ajouter_creneau"/>
<p>Entrez un créneau à ajouter :</p>
<form action="${lien_ajouter_creneau}" method="post">
    <div>
        <label for="jour">Jour : </label>
        <select name="jour" id="jour">
            <option value="Lundi">Lundi</option>
            <option value="Mardi">Mardi</option>
            <option value="Mercredi">Mercredi</option>
            <option value="Jeudi">Jeudi</option>
            <option value="Vendredi">Vendredi</option>
        </select>
    </div>
    <div>
        <label for="heure-debut">Heure de début : </label>
        <select name="heure-debut" id="heure-debut">
            <option value="1">8:30</option>
            <option value="2">9:00</option>
            <option value="3">9:30</option>
            <option value="4">10:00</option>
            <option value="5">10:30</option>
            <option value="6">11:00</option>
            <option value="7">11:30</option>
            <option value="8">12:00</option>
            <option value="9">12:30</option>
            <option value="10">13:00</option>
            <option value="11">13:30</option>
            <option value="12">14:00</option>
            <option value="13">14:30</option>
            <option value="14">15:00</option>
            <option value="15">15:30</option>
            <option value="16">16:00</option>
            <option value="17">16:30</option>
            <option value="18">17:00</option>
            <option value="19">17:30</option>
            <option value="20">18:00</option>
            <option value="21">18:30</option>
        </select>
    </div>
    <div>
        <label for="heure-fin">Heure de fin : </label>
        <select name="heure-fin" id="heure-fin">
            <option value="1">8:30</option>
            <option value="2">9:00</option>
            <option value="3">9:30</option>
            <option value="4">10:00</option>
            <option value="5">10:30</option>
            <option value="6">11:00</option>
            <option value="7">11:30</option>
            <option value="8">12:00</option>
            <option value="9">12:30</option>
            <option value="10">13:00</option>
            <option value="11">13:30</option>
            <option value="12">14:00</option>
            <option value="13">14:30</option>
            <option value="14">15:00</option>
            <option value="15">15:30</option>
            <option value="16">16:00</option>
            <option value="17">16:30</option>
            <option value="18">17:00</option>
            <option value="19">17:30</option>
            <option value="20">18:00</option>
            <option value="21">18:30</option>
        </select>
    </div>
    <div>
        <label for="matiere">Matière : </label>
        <input type="text" name="matiere" id="matiere">
    </div>
    <div>
        <input type="submit" name="ajouter" value="Ajouter">
    </div>
</form>
</body>
</html>
