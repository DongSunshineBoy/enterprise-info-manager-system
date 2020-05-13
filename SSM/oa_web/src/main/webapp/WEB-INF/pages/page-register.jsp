<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>注册</title>
    <meta name="keywords" content="HTML5 Bootstrap 3 Admin Template UI Theme" />
    <meta name="description" content="AbsoluteAdmin - A Responsive HTML5 Admin UI Framework">
    <meta name="author" content="AbsoluteAdmin">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet"  href="${pageContext.request.contextPath}/assets/skin/default_skin/css/theme.css">
    <link rel="stylesheet"  href="${pageContext.request.contextPath}/assets/admin-tools/admin-forms/css/admin-forms.css">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/img/favicon.ico">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/bootstrapValidator.css"/>
</head>
<body class="external-page external-alt sb-l-c sb-r-c">
<div id="main" class="animated fadeIn">
    <section id="content_wrapper">
        <section id="content">
            <div class="admin-form theme-info mw500" id="login">
                <div class="content-header">
                    <h1> 用户注册</h1>
                </div>
                <c:if test="${message}">
                    <script>
                        alert('恭喜你注册成功!')
                    </script>
                </c:if>
                <div class="panel mt30 mb25">
                    <from:form action="${pageContext.request.contextPath}/register" modelAttribute="employee" method="post"  class="form-horizontal"  id="admin-form" name="addForm">
                        <div class="panel-body bg-light p25 pb15">
                            <div class="section">
                                <div class="form-group">
                                    <label class="col-lg-3 control-label">用户名</label>
                                    <div class="col-lg-9">
                                        <form:hidden path="emp_position" value="学生"  class="form-control" name="emp_position"/>
                                        <form:input path="emp_id"  class="form-control" name="emp_id" placeholder="用户名" required="true"/>
                                    </div>
                                </div>
                            </div>
                            <div class="section">
                                <div class="form-group">
                                    <label class="col-lg-3 control-label">密码</label>
                                    <div class="col-lg-9">
                                        <form:password path="emp_pwd" class="form-control" name="emp_pwd" placeholder="密码" required="true" />
                                    </div>
                                </div>
                            </div>
                            <div class="section">
                                <div class="form-group">
                                    <label class="col-lg-3 control-label">电话号码</label>
                                    <div class="col-lg-9">
                                        <form:input path="emp_phone" class="form-control" name="emp_phone" placeholder="电话号码"  />
                                    </div>
                                </div>
                            </div>
                            <div class="section">
                                <div class="form-group">
                                    <label class="col-lg-3 control-label">真实姓名</label>
                                    <div class="col-lg-9">
                                        <from:input path="emp_name" maxlength="5" class="form-control" name="emp_name" placeholder="真实姓名" required="true"  />
                                    </div>
                                </div>
                            </div>
                            <div class="section">
                                <div class="form-group">
                                    <label class="col-lg-3 control-label">所属学科</label>
                                    <div class="col-lg-9">
                                        <form:select path="dep_id" items="${department}"  itemLabel="name" itemValue="sn" cssClass="gui-input" placeholder="所属专业..."/>
                                    </div>
                                </div>
                            </div>


                        </div>
                        <div class="panel-footer clearfix">
                            <div class="form-group">
                                    <button type="submit"  class="button btn-primary mr5 form-control" >注册</button>
                            </div>
                            <label class="switch ib switch-primary mt10">
                                <div class="register-link m-t-15 text-center">
                                    <p><a href="${pageContext.request.contextPath}/to_login"> 返回登陆</a></p>
                                </div>
                            </label>
                        </div>
                    </from:form>
                </div>
            </div>
        </section>
    </section>
</div>
<script type="text/javascript" src="./vendor/jquery/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="./vendor/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="./dist/js/bootstrapValidator.js"></script>
<script src="./assets/js/utility/utility.js"></script>
<script src="./assets/js/demo/demo.js"></script>
<script src="./js/register_validator.js"></script>

</body>
</html>

