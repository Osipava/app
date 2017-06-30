<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>

<head>
    <title>Welcome</title>
    <style>
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
    </style>
</head>

<body>
<div id="index">
    <p class="title">Welcome to my first app!!!
        <br>
        <a href="viewemp/1" title="Go to the table of the users"><img src="<c:url value="/resources/images/go.png"/>"/></a>
    </p>
</div>
</body>

</html>