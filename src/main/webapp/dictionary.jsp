<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>

<%--
  Created by IntelliJ IDEA.
  User: xuant
  Date: 2/2/2021
  Time: 10:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>

<%
    Map<String,String> wordList = new HashMap<>();

%>
<%

    wordList.put("hello","xin chao");
    wordList.put("hi","xin chao ban be");
    wordList.put("dog","con cho");
    wordList.put("cat","con meo");

    String eng = request.getParameter("enWord");

    String result = wordList.get(eng);

    if (result!=null){
        out.println("Word: " + eng);
        out.println("Result: " + result);
    } else {
        out.println("not found");
    }
%>
</body>
</html>
