<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%
    String userInput = request.getParameter("userInput");
    // Vulnerable to EL Injection
    pageContext.setAttribute("userInput", userInput);
%>
<html>
<body>
    <h2>User Input:</h2>
    <p>${userInput}</p>
</body>
</html>