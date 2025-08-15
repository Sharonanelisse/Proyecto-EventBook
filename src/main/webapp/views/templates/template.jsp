<%--
  Created by IntelliJ IDEA.
  User: alexg
  Date: 14/08/2025
  Time: 11:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" language="java" %>


<html>
<head>
    <jsp:include page="header.jsp" />
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-12">
            <jsp:include page="../${vista}" />
        </div>
    </div>
</div>
</body>
</html>