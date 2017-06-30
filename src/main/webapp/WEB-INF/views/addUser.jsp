<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>


<%--
  Created by IntelliJ IDEA.
  User: ZheLe
  Date: 21.02.2017
  Time: 22:58
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <title>Add user</title>
    <style type="text/css">
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

<spring:url var="userJSP" value="/addUser"/>
<form:form action="${userJSP}" method="post" modelAttribute="userJSP">
    <table class="table">
        <tr>
            <td>Is Admin</td>
            <td>
                <form:select path="isAdmin">
                    <form:option value="true"/>
                    <form:option value="false"/>

                </form:select>
            </td>
        </tr>
        <tr>
            <td>Name</td>
            <td><form:input path="name"/></td>

        </tr>
        <tr>
            <td>Age</td>
            <td><form:input path="age"/></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <input type="image" src="/resources/images/SUBMIT.png"/>
            </td>
        </tr>
    </table>
</form:form>
<a href="<c:url value='viewemp/1'/>" title="Go home"><img
        src="<c:url value="/resources/images/back.png"/>"/></a>
</body>
</html>
