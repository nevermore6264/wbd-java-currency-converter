<%@ page import="java.text.DecimalFormat" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 4/26/2018
  Time: 4:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Converter</title>
</head>
<body>
<%
    float rate = Float.parseFloat(request.getParameter("rate"));
    float usd = Float.parseFloat(request.getParameter("usd"));
    float vnd = rate * usd;
    DecimalFormat formatter = new DecimalFormat("###,###,###");
%>
<h3>Rate: <%=rate%>
</h3>
<h3>USD: <%=usd%>
</h3>
<h3>VND: <%=formatter.format(vnd)%>
</h3>

</body>
</html>