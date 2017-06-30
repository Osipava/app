<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 23.06.2017
  Time: 10:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>Result of search</title>
    <style type="text/css">
        #index {
            width: 960px;
            margin: 0 auto;
        }

        .title {
            text-align: center;
            text-shadow: lightslategray 0 0 2px;
            font-weight: bolder;
            font-family: Arial, sans-serif;
            font-size: 48px;
            color: #908989;
        }

        .table {
            font-family: verdana, arial, sans-serif;
            font-size: 24px;
            color: #333333;
            border-width: 1px;
            border-color: #3A3A3A;
            border-collapse: collapse;
        }

        .table th {
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #CABEBE;
            background-color: #908989;
            color: #ffffff;
        }

        .table tr:hover td {
            cursor: pointer;
        }

        .table tr:nth-child(even) td {
            background-color: #CABEBE;
        }

        .table td {
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #908989;
            background-color: #ffffff;
        }
    </style>

</head>
<body>
<div id="index">
    <p class="title">Result of search</p>
    <br>

    <table class="table">
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Age</th>
            <th>IsAdmin</th>
            <th>Created</th>
        </tr>
        <c:forEach var="user" items="${listUsers}">
            <tr>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.age}</td>
                <td>${user.isAdmin}</td>
                <td>${user.created}</td>
            </tr>
        </c:forEach>

        <a href="<c:url value='viewemp/1'/>" title="Go home"><img
                src="<c:url value="/resources/images/back.png"/>"/></a>

    </table>
</div>

</body>
</html>
