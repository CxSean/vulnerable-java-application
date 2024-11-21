<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%
    String url = request.getParameter("url");
    // Vulnerable to EL Injection
    pageContext.setAttribute("url", url);
    return ActionContext.getContext().getValueStack().findValue(pageContext['url']).toString();
%>
<html>
<body>
    <h2>URL:</h2>
    <p>${pageContext['url']}</p> <!-- EL Injection vulnerability -->
</body>
</html>