<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<%
    request.setAttribute("vista", "user/login.jsp");
    request.getRequestDispatcher("templates/template.jsp").forward(request, response);

%>