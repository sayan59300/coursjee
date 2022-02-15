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
                <c:if test="${ creneau.jour eq 'Lundi' and creneau.heureDebut eq '8:30'}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mardi' and creneau.heureDebut eq '8:30'}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mercredi' and creneau.heureDebut eq '8:30'}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Jeudi' and creneau.heureDebut eq '8:30'}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Vendredi' and creneau.heureDebut eq '8:30'}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>9:00</td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Lundi' and (creneau.heureDebut eq '9:00' or creneau.heureFin eq '9:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mardi' and (creneau.heureDebut eq '9:00' or creneau.heureFin eq '9:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mercredi' and (creneau.heureDebut eq '9:00' or creneau.heureFin eq '9:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Jeudi' and (creneau.heureDebut eq '9:00' or creneau.heureFin eq '9:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Vendredi' and (creneau.heureDebut eq '9:00' or creneau.heureFin eq '9:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>9:30</td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Lundi' and (creneau.heureDebut eq '9:30' or creneau.heureFin eq '9:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mardi' and (creneau.heureDebut eq '9:30' or creneau.heureFin eq '9:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mercredi' and (creneau.heureDebut eq '9:30' or creneau.heureFin eq '9:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Jeudi' and (creneau.heureDebut eq '9:30' or creneau.heureFin eq '9:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Vendredi' and (creneau.heureDebut eq '9:30' or creneau.heureFin eq '9:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>10:00</td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Lundi' and (creneau.heureDebut eq '10:00' or creneau.heureFin eq '10:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mardi' and (creneau.heureDebut eq '10:00' or creneau.heureFin eq '10:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mercredi' and (creneau.heureDebut eq '10:00' or creneau.heureFin eq '10:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Jeudi' and (creneau.heureDebut eq '10:00' or creneau.heureFin eq '10:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Vendredi' and (creneau.heureDebut eq '10:00' or creneau.heureFin eq '10:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>10:30</td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Lundi' and (creneau.heureDebut eq '10:30' or creneau.heureFin eq '10:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mardi' and (creneau.heureDebut eq '10:30' or creneau.heureFin eq '10:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mercredi' and (creneau.heureDebut eq '10:30' or creneau.heureFin eq '10:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Jeudi' and (creneau.heureDebut eq '10:30' or creneau.heureFin eq '10:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Vendredi' and (creneau.heureDebut eq '10:30' or creneau.heureFin eq '10:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>11:00</td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Lundi' and (creneau.heureDebut eq '11:00' or creneau.heureFin eq '11:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mardi' and (creneau.heureDebut eq '11:00' or creneau.heureFin eq '11:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mercredi' and (creneau.heureDebut eq '11:00' or creneau.heureFin eq '11:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Jeudi' and (creneau.heureDebut eq '11:00' or creneau.heureFin eq '11:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Vendredi' and (creneau.heureDebut eq '11:00' or creneau.heureFin eq '11:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>11:30</td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Lundi' and (creneau.heureDebut eq '11:30' or creneau.heureFin eq '11:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mardi' and (creneau.heureDebut eq '11:30' or creneau.heureFin eq '11:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mercredi' and (creneau.heureDebut eq '11:30' or creneau.heureFin eq '11:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Jeudi' and (creneau.heureDebut eq '11:30' or creneau.heureFin eq '11:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Vendredi' and (creneau.heureDebut eq '11:30' or creneau.heureFin eq '11:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>12:00</td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Lundi' and (creneau.heureDebut eq '12:00' or creneau.heureFin eq '12:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mardi' and (creneau.heureDebut eq '12:00' or creneau.heureFin eq '12:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mercredi' and (creneau.heureDebut eq '12:00' or creneau.heureFin eq '12:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Jeudi' and (creneau.heureDebut eq '12:00' or creneau.heureFin eq '12:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Vendredi' and (creneau.heureDebut eq '12:00' or creneau.heureFin eq '12:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>12:30</td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Lundi' and (creneau.heureDebut eq '12:30' or creneau.heureFin eq '12:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mardi' and (creneau.heureDebut eq '12:30' or creneau.heureFin eq '12:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mercredi' and (creneau.heureDebut eq '12:30' or creneau.heureFin eq '12:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Jeudi' and (creneau.heureDebut eq '12:30' or creneau.heureFin eq '12:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Vendredi' and (creneau.heureDebut eq '12:30' or creneau.heureFin eq '12:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>13:00</td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Lundi' and (creneau.heureDebut eq '13:00' or creneau.heureFin eq '13:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mardi' and (creneau.heureDebut eq '13:00' or creneau.heureFin eq '13:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mercredi' and (creneau.heureDebut eq '13:00' or creneau.heureFin eq '13:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Jeudi' and (creneau.heureDebut eq '13:00' or creneau.heureFin eq '13:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Vendredi' and (creneau.heureDebut eq '13:00' or creneau.heureFin eq '13:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>13:30</td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Lundi' and (creneau.heureDebut eq '13:30' or creneau.heureFin eq '13:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mardi' and (creneau.heureDebut eq '13:30' or creneau.heureFin eq '13:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mercredi' and (creneau.heureDebut eq '13:30' or creneau.heureFin eq '13:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Jeudi' and (creneau.heureDebut eq '13:30' or creneau.heureFin eq '13:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Vendredi' and (creneau.heureDebut eq '13:30' or creneau.heureFin eq '13:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>14:00</td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Lundi' and (creneau.heureDebut eq '14:00' or creneau.heureFin eq '14:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mardi' and (creneau.heureDebut eq '14:00' or creneau.heureFin eq '14:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mercredi' and (creneau.heureDebut eq '14:00' or creneau.heureFin eq '14:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Jeudi' and (creneau.heureDebut eq '14:00' or creneau.heureFin eq '14:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Vendredi' and (creneau.heureDebut eq '14:00' or creneau.heureFin eq '14:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>14:30</td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Lundi' and (creneau.heureDebut eq '14:30' or creneau.heureFin eq '14:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mardi' and (creneau.heureDebut eq '14:30' or creneau.heureFin eq '14:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mercredi' and (creneau.heureDebut eq '14:30' or creneau.heureFin eq '14:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Jeudi' and (creneau.heureDebut eq '14:30' or creneau.heureFin eq '14:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Vendredi' and (creneau.heureDebut eq '14:30' or creneau.heureFin eq '14:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>15:00</td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Lundi' and (creneau.heureDebut eq '15:00' or creneau.heureFin eq '15:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mardi' and (creneau.heureDebut eq '15:00' or creneau.heureFin eq '15:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mercredi' and (creneau.heureDebut eq '15:00' or creneau.heureFin eq '15:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Jeudi' and (creneau.heureDebut eq '15:00' or creneau.heureFin eq '15:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Vendredi' and (creneau.heureDebut eq '15:00' or creneau.heureFin eq '15:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>15:30</td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Lundi' and (creneau.heureDebut eq '15:30' or creneau.heureFin eq '15:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mardi' and (creneau.heureDebut eq '15:30' or creneau.heureFin eq '15:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mercredi' and (creneau.heureDebut eq '15:30' or creneau.heureFin eq '15:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Jeudi' and (creneau.heureDebut eq '15:30' or creneau.heureFin eq '15:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Vendredi' and (creneau.heureDebut eq '15:30' or creneau.heureFin eq '15:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>16:00</td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Lundi' and (creneau.heureDebut eq '16:00' or creneau.heureFin eq '16:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mardi' and (creneau.heureDebut eq '16:00' or creneau.heureFin eq '16:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mercredi' and (creneau.heureDebut eq '16:00' or creneau.heureFin eq '16:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Jeudi' and (creneau.heureDebut eq '16:00' or creneau.heureFin eq '16:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Vendredi' and (creneau.heureDebut eq '16:00' or creneau.heureFin eq '16:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>16:30</td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Lundi' and (creneau.heureDebut eq '16:30' or creneau.heureFin eq '16:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mardi' and (creneau.heureDebut eq '16:30' or creneau.heureFin eq '16:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mercredi' and (creneau.heureDebut eq '16:30' or creneau.heureFin eq '16:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Jeudi' and (creneau.heureDebut eq '16:30' or creneau.heureFin eq '16:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Vendredi' and (creneau.heureDebut eq '16:30' or creneau.heureFin eq '16:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>17:00</td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Lundi' and (creneau.heureDebut eq '17:00' or creneau.heureFin eq '17:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mardi' and (creneau.heureDebut eq '17:00' or creneau.heureFin eq '17:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mercredi' and (creneau.heureDebut eq '17:00' or creneau.heureFin eq '17:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Jeudi' and (creneau.heureDebut eq '17:00' or creneau.heureFin eq '17:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Vendredi' and (creneau.heureDebut eq '17:00' or creneau.heureFin eq '17:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>17:30</td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Lundi' and (creneau.heureDebut eq '17:30' or creneau.heureFin eq '17:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mardi' and (creneau.heureDebut eq '17:30' or creneau.heureFin eq '17:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mercredi' and (creneau.heureDebut eq '17:30' or creneau.heureFin eq '17:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Jeudi' and (creneau.heureDebut eq '17:30' or creneau.heureFin eq '17:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Vendredi' and (creneau.heureDebut eq '17:30' or creneau.heureFin eq '17:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>18:00</td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Lundi' and (creneau.heureDebut eq '18:00' or creneau.heureFin eq '18:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mardi' and (creneau.heureDebut eq '18:00' or creneau.heureFin eq '18:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mercredi' and (creneau.heureDebut eq '18:00' or creneau.heureFin eq '18:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Jeudi' and (creneau.heureDebut eq '18:00' or creneau.heureFin eq '18:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Vendredi' and (creneau.heureDebut eq '18:00' or creneau.heureFin eq '18:00')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>18:30</td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Lundi' and (creneau.heureDebut eq '18:30' or creneau.heureFin eq '18:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mardi' and (creneau.heureDebut eq '18:30' or creneau.heureFin eq '18:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Mercredi' and (creneau.heureDebut eq '18:30' or creneau.heureFin eq '18:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Jeudi' and (creneau.heureDebut eq '18:30' or creneau.heureFin eq '18:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
        <td>
            <c:forEach items="${liste}" var="creneau">
                <c:if test="${ creneau.jour eq 'Vendredi' and (creneau.heureDebut eq '18:30' or creneau.heureFin eq '18:30')}">
                    <c:out value="${creneau.matiere}"/>
                </c:if>
            </c:forEach>
        </td>
    </tr>
</table>
<c:url value="/emploi-du-temps" var="lien_ajouter_creneau">
    <c:param name="operation" value="ajouter"/>
</c:url>
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
            <option value="8:30">8:30</option>
            <option value="9:00">9:00</option>
            <option value="9:30">9:30</option>
            <option value="10:00">10:00</option>
            <option value="10:30">10:30</option>
            <option value="11:00">11:00</option>
            <option value="11:30">11:30</option>
            <option value="12:00">12:00</option>
            <option value="12:30">12:30</option>
            <option value="13:00">13:00</option>
            <option value="13:30">13:30</option>
            <option value="14:00">14:00</option>
            <option value="14:30">14:30</option>
            <option value="15:00">15:00</option>
            <option value="15:30">15:30</option>
            <option value="16:00">16:00</option>
            <option value="16:30">16:30</option>
            <option value="17:00">17:00</option>
            <option value="17:30">17:30</option>
            <option value="18:00">18:00</option>
            <option value="18:30">18:30</option>
        </select>
    </div>
    <div>
        <label for="heure-fin">Heure de fin : </label>
        <select name="heure-fin" id="heure-fin">
            <option value="8:30">8:30</option>
            <option value="9:00">9:00</option>
            <option value="9:30">9:30</option>
            <option value="10:00">10:00</option>
            <option value="10:30">10:30</option>
            <option value="11:00">11:00</option>
            <option value="11:30">11:30</option>
            <option value="12:00">12:00</option>
            <option value="12:30">12:30</option>
            <option value="13:00">13:00</option>
            <option value="13:30">13:30</option>
            <option value="14:00">14:00</option>
            <option value="14:30">14:30</option>
            <option value="15:00">15:00</option>
            <option value="15:30">15:30</option>
            <option value="16:00">16:00</option>
            <option value="16:30">16:30</option>
            <option value="17:00">17:00</option>
            <option value="17:30">17:30</option>
            <option value="18:00">18:00</option>
            <option value="18:30">18:30</option>
        </select>
    </div>
    <div>
        <label for="matiere">Matière : </label>
        <input type="text" name="matiere" id="matiere">
    </div>
    <div>
        <input type="button" name="ajouter" value="Ajouter">
    </div>
</form>
</body>
</html>
