<%--
  Created by IntelliJ IDEA.
  User: Trinh Thao
  Date: 8/1/2019
  Time: 11:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> Employee </title>
</head>
<body>
    <form method="post" action="/employee/add">
        Full Name <input type="text" name="fullName">
        Birthday <input type="date" name="birthday">
        Address <input type="text" name="address">
        Position <input type="text" name="position">
        Department <input type="text" name="department">
        <input type="submit" name="btn_submit" value="Submit">
        <input type="reset" name="btn_reset" value="Reset">

    </form>
</body>
</html>
