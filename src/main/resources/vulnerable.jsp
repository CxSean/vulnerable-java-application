<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%
    String url = request.getParameter("url");
    // Vulnerable to EL Injection
    pageContext.setAttribute("url", url);
%>
<html>
<body>
    <h2>URL:</h2>
    <p>${url}</p>
</body>
</html>