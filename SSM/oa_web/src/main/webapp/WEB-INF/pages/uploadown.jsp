<%--
  Created by IntelliJ IDEA.
  User: dongwentao
  Date: 2020/4/15
  Time: 15:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div align="center">
    <h1>上传附件</h1>
    <form action="${pageContext.request.contextPath}/upLoadDown" method="post" enctype="multipart/form-data">
        <input type="file" name="file"/>
        <input type="submit" value="上传"/>
    </form>
</div>
</body>
</html>
