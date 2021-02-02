<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 02/02/2021
  Time: 10:25 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
<%!
    Map<String, String> list = new HashMap();
%>
<%
    list.put("hello","xin chào");
    list.put("how", "Thế nào");
    list.put("book", "Quyển vở");
    list.put("computer", "Máy tính");
    String search = request.getParameter("search");
    String result = list.get(search);
    PrintWriter writer = response.getWriter();
    if (result !=null){
        writer.println("Word: " + search);
        writer.println("Result: " + result);
    } else {
        writer.println("Not found");

    }

%>
</body>
</html>
