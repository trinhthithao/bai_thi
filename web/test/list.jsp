<%@ page import="entity.Employee" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Trinh Thao
  Date: 8/1/2019
  Time: 11:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<Employee> list = (List<Employee>) request.getAttribute("list");
%>
<html>
<head>
    <title>List</title>
</head>
<body>
<div class="main-content">
    <h1>Account List</h1>
    <ul>
        <%
            for (int i = 0; i < list.size(); i++) {
        %>
        <li>
            <div>
                <a href="#"><%= list.get(i).getFullName()%>
                </a>
            </div>
            <div>
                <a href="#"><%= list.get(i).getBirthday()%>
                </a>
            </div>
            <div>
                <a href="#"><%= list.get(i).getAddress()%>
                </a>
            </div>
            <div>
                <a href="#"><%= list.get(i).getPosition()%>
                </a>
            </div>
            <div>
                <a href="#"><%= list.get(i).getDepartment()%>
                </a>
            </div>
        </li>
        <%
            }
        %>
    </ul>
</div>
</body>
</html>
