<%--
  Created by IntelliJ IDEA.
  User: dongwentao
  Date: 2020/3/8
  Time: 10:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>欢迎使用企业管理OA</title>
    <meta name="keywords" content="HTML5 Bootstrap 3 Admin Template UI Theme" />
    <meta name="description" content="AbsoluteAdmin - A Responsive HTML5 Admin UI Framework">
    <meta name="author" content="AbsoluteAdmin">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet"  href="${pageContext.request.contextPath}/assets/skin/default_skin/css/theme.css">
    <link rel="stylesheet"  href="${pageContext.request.contextPath}/assets/admin-tools/admin-forms/css/admin-forms.css">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/img/favicon.ico">
</head>
<body class="external-page external-alt sb-l-c sb-r-c">
<div id="main" class="animated fadeIn">
    <section id="content_wrapper">
        <section id="content">
            <div class="admin-form theme-info mw500" id="login">
                <div class="content-header">
                    <h1> 大创项目申请系统</h1>
                    <p class="lead">欢迎使用大创项目申请系统</p>
                </div>
                <div class="panel mt30 mb25">
                    <form method="post" action="${pageContext.request.contextPath}/login" id="contact">
                        <div class="panel-body bg-light p25 pb15">
                            <div class="section">
                                <label for="sn" class="field-label text-muted fs18 mb10">身份编号</label>
                                <label for="sn" class="field prepend-icon">
                                    <input type="text" name="username" id="sn" required data-bv-message="用户名不为空!"  class="gui-input" placeholder="请输入身份编号...">
                                    <label for="sn" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                            <div class="section">
                                <label for="password" class="field-label text-muted fs18 mb10">密码</label>
                                <label for="password" class="field prepend-icon">
                                    <input type="password" name="password" data-bv-message="密码不为空!"  required id="password" class="gui-input" placeholder="请输入密码...">
                                    <label for="password" class="field-icon">
                                        <i class="fa fa-lock"></i>
                                    </label>
                                </label>
                                <p style="color: red; font-weight: bold" align="center">${sessionScope.error}</p>
                            </div>
                        </div>
                        <div class="panel-footer clearfix">
                            <button type="submit" class="button btn-primary mr10 pull-right">登陆</button>
                            <label class="switch ib switch-primary mt10">
                                <input type="checkbox" name="remember" id="remember" checked="true">
                                <label for="remember" data-on="是" data-off="否"></label>
                                <span>记住我</span>
                                <div class="register-link m-t-15 text-center">
                                    <p>注册 <a href="${pageContext.request.contextPath}/to_register"> 点击注册</a></p>
                                </div>
                            </label>
                        </div>
                    </form>
                </div>
            </div>
        </section>
    </section>
</div>
<script src="${pageContext.request.contextPath}/vendor/jquery/jquery-1.11.1.min.js"></script>
<script src="${pageContext.request.contextPath}/vendor/jquery/jquery_ui/jquery-ui.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/utility/utility.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/demo/demo.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
</body>
</html>

