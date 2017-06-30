<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<html>

<head>
    <title>Table of Users</title>
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
       .emptyTr {
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #CABEBE;
            background-color: #908989;
            color: #ffffff;
        }

        .pagination a {
            font-family: verdana, arial, sans-serif;
            font-size: 24px;
            color: #333333;
            text-decoration: none;

        }


    </style>
</head>

<body>
<div id="index" >
    <p class="title">
        Table of users</p>
    <br>
           <table class="table">
               <tr>
           <td style="border: hidden" width="10%"> <a href="<c:url value='/'/>" title="Go home"><img
                    src="<c:url value="/resources/images/back.png"/>"/></a></td>
                   <td style="border: hidden" width="10%"> <a href="<c:url value='/addUser'/>" title="Add users"><img
                           src="<c:url value="/resources/images/ADD.png"/>"/></a></td>

            <form action="/searchUser" method="post"><label>
                <td align="right" width="70%" style="border: hidden" >  <input type="text" name="searchName"></td>

                <td style="border: hidden" width="10%">  <input type="image" src="/resources/images/FIND.png"/></td>
            </label></form>
               </tr>
           </table>

    <br>
    <table class="table" align="center">
        <thead>


        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Age</th>
            <th>IsAdmin</th>
            <th>Created</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="user" items="${list}">
            <tr>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.age}</td>
                <td>${user.isAdmin}</td>
                <td>${user.created}</td>

                <td><a href="<c:url value='/editUser/${user.id}'/>" title="Edit users"><img
                        src="<c:url value="/resources/images/EDIT.png"/>"/></a></td>
                <td><a href="<c:url value='/delete/${user.id}'/>" title="Delete users"><img
                        src="<c:url value="/resources/images/DELETE.png"/>"/></a></td>
            </tr>

        </c:forEach>
        </tbody>
    </table>
    <br/>
    <p class="pagination">
        <a href="${pageContext.request.contextPath}/viewemp/1">1</a>
        <a href="${pageContext.request.contextPath}/viewemp/2">2</a>
        <a href="${pageContext.request.contextPath}/viewemp/3">3</a>
        <a href="${pageContext.request.contextPath}/viewemp/4">4</a>
        <a href="${pageContext.request.contextPath}/viewemp/5">5</a>
        <a href="${pageContext.request.contextPath}/viewemp/6">6</a>
        <a href="${pageContext.request.contextPath}/viewemp/7">7</a>
        <a href="${pageContext.request.contextPath}/viewemp/8">8</a>
        <a href="${pageContext.request.contextPath}/viewemp/9">9</a>
        <a href="${pageContext.request.contextPath}/viewemp/10">10</a>
    </p>
</div>
</body>

</html>
